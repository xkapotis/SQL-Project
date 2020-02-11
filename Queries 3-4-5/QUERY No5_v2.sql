ALTER TRIGGER trgNewProject
ON Projects
AFTER  INSERT,UPDATE
as begin 

IF UPDATE (EndDate) 
begin
INSERT INTO Current_Project (TotalProj, TotalBudget, CPDate, TimeCreated) 
		VALUES(
			(select count(*) from Projects where Project_status_idProject_status = 1) , 
			(select SUM(Budget) from Projects where Project_status_idProject_status = 1),
			GETDATE(), 
			GETDATE()) 
end 
end



/*
INSERT INTO Projects ( Members_idMembers, Project_status_idProject_status, Code, Title, Financing, Budget, Startdate, Enddate) 
VALUES(5,1,'FED4FIRE6','FED4FIRE VI','ERANET GR PLUS-PLUS_6','4000','2018-06-13',null)


update projects set Enddate = '2018-09-11',Project_status_idProject_status=2  where idProjects = 14

update projects set Project_status_idProject_status=2 where idProjects = 9

	select * from Current_Project
	select * from Projects
