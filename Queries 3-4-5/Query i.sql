select  (m.Sname  + ' ' + m.name ) [Ονοματεπώνυμο], 
		p.code [Κωδικός Έργου] , 
		p.Title [Τίτλος Έργου], 
		CONVERT(varchar, p.Startdate, 103) [Ημερομηνία Έναρξης] , 
		CONVERT(varchar, p.enddate, 103) [Ημερομηνία Λήξης]
from Projects p 
join Members m on  p.Members_idMembers = m.idMembers
join Project_status ps on p.Project_status_idProject_status = ps.idProject_status
where m.Sname = 'Χαλκίδη'
and ps.Description  = 'Ολοκληρωμένο'




