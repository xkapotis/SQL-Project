CREATE proc procstatistics (@StatsYear as smallint  )
as
begin 
	if   OBJECT_ID(N'PublStatistics', N'U') is not null
	print 'The table PublStatistics exists'
	begin 
		if exists ( select * from PublStatistics where publYear = @StatsYear)
			update PublStatistics 
			set  
			TotalNum = (select count(*) from  Publications 	where pyear = @StatsYear )  ,
			publYear = @StatsYear ,
			TimeCreated = GETDATE()
			where publYear = @StatsYear
		else
			insert into PublStatistics  (TotalNum , publYear, TimeCreated )
			values ( 
			(select count(*) from  Publications where pyear = @StatsYear), 
			(select distinct PYear	from Publications where pyear = @StatsYear) ,
			 GETDATE()
					)
	end
end


exec procstatistics
@StatsYear = '2016'