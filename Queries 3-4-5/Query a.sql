
select	(m.Sname  + ' ' + m.name ) [������������� ],
		p.Subject [������],
		p.pname [����� ����������/����������/�������],
		p.PYear [���� �����������]
from Publications p
join members_has_publications mp on p.idpublications = mp.Publications_idPublications
join Members m on  mp.Members_idMembers = m.idMembers
where p.PYear = 2019