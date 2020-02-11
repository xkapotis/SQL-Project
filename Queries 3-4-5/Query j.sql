select	sname [Επώνυμο], 
		name  [Όνομα], 
		fname [Όνομα πατρός], 
		email [e-mail], 
		tel   [Τηλέφωνο]
from Members with (index (PK__Members__13917D281B1D19BF))
where Sname like 'Δ%'
order by sname