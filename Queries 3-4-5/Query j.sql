select	sname [�������], 
		name  [�����], 
		fname [����� ������], 
		email [e-mail], 
		tel   [��������]
from Members with (index (PK__Members__13917D281B1D19BF))
where Sname like '�%'
order by sname