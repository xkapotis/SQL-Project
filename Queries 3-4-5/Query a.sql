
select	(m.Sname  + ' ' + m.name ) [Ονοματεπώνυμο ],
		p.Subject [Τίτλος],
		p.pname [Όνομα Περιοδικού/Συνεδρίοιυ/Βιβλιου],
		p.PYear [Έτος Δημοσίευσης]
from Publications p
join members_has_publications mp on p.idpublications = mp.Publications_idPublications
join Members m on  mp.Members_idMembers = m.idMembers
where p.PYear = 2019