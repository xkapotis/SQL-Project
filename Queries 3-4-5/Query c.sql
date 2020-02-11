select	(m.Sname  + ' ' + m.name ) [������������� ������ ���], 
		c.description [����� �����������]  , 
		count(*) [������ ������������]
from Publications p 
join members_has_publications mp on p.idpublications = mp.Publications_idPublications
join Members m on  mp.Members_idMembers = m.idMembers
join category c on p.Category_idCategory  = c.idCategory
join Member_type mt on m.Member_type_idMember_type = mt.idMember_type
where (p.pyear  between 2017 and 2019)
and mt.description = '���� ���'
group by c.description, m.Sname, m.name 
order by sname