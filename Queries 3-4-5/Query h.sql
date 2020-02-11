select	c.semester , 
		ct.description, 
		c.Title , 
		(m.Sname  + ' ' + m.name ) [Ονοματεπώνυμο]
from Courses c 
join members_has_courses mc on c.idCourses = mc.Courses_idCourses
join Members m  on mc.Members_idMembers = m.idMembers
join Course_type ct on c.Course_type_idCourse_type = ct.idCourse_type 
group by c.semester , ct.description, c.Title , m.Sname, m.Name
order by ct.description desc,  c.Semester, c.Title
