s1164308@rockhopper.monmouth.edu's password: 
Last login: Sun Apr  3 21:23:16 2022 from ool-18bf23e1.dyn.optonline.net
ORACLE_BASE environment variable is not being set since this
information is not available for the current user ID s1164308.
You can set ORACLE_BASE manually if it is required.
Resetting ORACLE_BASE to its previous value or ORACLE_HOME
The Oracle base has been set to /opt/oracle/product/18c/dbhomeXE
[s1164308@rockhopper ~]$ vim
















SELECT take.sid, course.cno
FROM student, course, take
WHERE course.cno = take.cno AND student.sid = take.sid AND grade = 'F' ;

SELECT sname, cname
FROM student, course, take
WHERE course.cno = take.cno AND student.sid = take.sid AND grade = 'F';

SELECT course.cno
FROM student, course, take 
WHERE student.sid = take.sid AND course.cno = take.cno AND student.sid = 's11';

~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
"searchrecords2.sql" 12L, 375C written                        11,75         All
