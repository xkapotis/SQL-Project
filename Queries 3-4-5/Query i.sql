select  (m.Sname  + ' ' + m.name ) [�������������], 
		p.code [������� �����] , 
		p.Title [������ �����], 
		CONVERT(varchar, p.Startdate, 103) [���������� �������] , 
		CONVERT(varchar, p.enddate, 103) [���������� �����]
from Projects p 
join Members m on  p.Members_idMembers = m.idMembers
join Project_status ps on p.Project_status_idProject_status = ps.idProject_status
where m.Sname = '�������'
and ps.Description  = '������������'




