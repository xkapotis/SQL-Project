select	(m.Sname  + ' ' + m.name ) [Ïíïìáôåğşíõìï] , 
		m.webpage [Web Page] , 
		m.email[e-mail], m.tel [Ôçëİöùíï], 
		p.Title [Ôßôëïò İñãïõ],  
		p.budget [Ğñïûğïëïãéóìüò]
	from Projects p 
	join Members m on p.Members_idMembers = m.idMembers
	where	p.Startdate >= '2016-01-01'
		and p.Startdate <= '2017-12-31'
order by p.Budget desc

