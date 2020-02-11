CREATE TRIGGER trgNewProject
ON Projects
AFTER  INSERT,UPDATE
as
begin 

INSERT INTO Current_Project (TotalProj, TotalBudget, CPDate, TimeCreated) 
		VALUES(
			(select count(*) from Projects where Project_status_idProject_status = 1) , 
			(select SUM(Budget) from Projects where Project_status_idProject_status = 1),
			GETDATE(), 
			GETDATE()) 
end 



/*
INSERT INTO Projects ( Members_idMembers, Project_status_idProject_status, Code, Title, Financing, Budget, Startdate, Enddate) 
VALUES(5,1,'FED4FIRE3','FED4FIRE IV','ERANET GR PLUS-PLUS','45000','2017-05-13',null)

update projects set Enddate = '2018-09-11' where idProjects = 18



	select * from Current_Project
	select * from Projects
	