select	(m.Sname  + ' ' + m.name ) [������������� ������������� �������], 
		p.Subject [���� �����������]
from Publications p 
join members_has_publications mp on p.idpublications = mp.Publications_idPublications
join Members m on  mp.Members_idMembers = m.idMembers
join Member_type mt on m.Member_type_idMember_type = mt.idMember_type
where (p.pyear between 2011 and 2015)
and mt.description = '������������� ��������'
order by m.sname