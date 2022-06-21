SELECT sid, cno
FROM student s, take t
WHERE s.sid = t.sid AND c.cno = t.cno AND grade = 'F'

SELECT sname, cname
FROM student s, course c, take t
WHERE s.sid = t.sid AND c.cno = t.cno AND grade = 'F'

SELECT cno
FROM student s, course c, take t
WHERE s.sid = t.sid AND c.cno = t.cno AND s.sid = 'S11

