select (m.Sname  + ' ' + m.name ) [Ονοματεπώνυμο],   
		count(*) [Σύνολο Δημοσιεύσεων], 
		p.PYear
from Publications p 
join members_has_publications mp on p.idpublications = mp.Publications_idPublications
join Members m on  mp.Members_idMembers = m.idMembers
group by m.Sname ,m.name,  p.PYear
having count(*) > = 2
order by count(*) desc