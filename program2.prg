*!*	SELECT Subjects.id, Cafedras.id;
*!*	FROM Subjects, Cafedras, teachers, curriculum;
*!*	WHERE curriculum.Предмет_id = 15 AND teachers.Кафедра_id = 
* 1*
*!*	SELECT distinct su.Предмет, ca.Кафедра, te.фио;
*!*	FROM curriculum cu;
*!*	join Subjects su ON su.id = cu.предмет_id;
*!*	JOIN teachers te ON te.id = cu.преподаватель_id;
*!*	join Cafedras ca ON ca.id = te.Кафедра_id;
*!*	WHERE cu.Предмет_id = 1

*2*
*!*	SELECT distinct ca.Кафедра FROM teachers te_a;
*!*	join Cafedras ca ON ca.id = te_a.Кафедра_id;
*!*	WHERE NOT exists (SELECT * FROM curriculum cu WHERE cu.Преподаватель_id = te_a.id AND cu.Группа_id = 1)
 
*5*
*SELECT *;
*FROM curriculum cu;
*where count(cu.форма_контроля_id), cu.форма_контроля_id = 1
*join ref_form_of_control co ON co.форма_контроля = cu.форма_контроля_id;

*SELECT Предмет_id,count(форма_контроля_id) FROM curriculum 
*group by Предмет_id
*where cu.форма_контроля_id = 1

*SELECT max(форма_контроля_id) FROM curriculum
*SELECT COUNT(форма_контроля_id) FROM curriculum cu WHERE cu.форма_контроля_id = 1
*??

*SELECT cu.предмет_id;
*from curriculum cu;
*WHERE (select MAX(SELECT COUNT(форма_контроля_id) FROM curriculum cu WHERE cu.форма_контроля_id = 1) FROM curriculum cu)

*4*

*SELECT cu.преподаватель_id, AVG(cu.часы) ;
*from curriculum cu;
*GROUP BY преподаватель_id
*WHERE 
*(SELECT * FROM curriculum cu WHERE (select COUNT(cu.часы) FROM curriculum cu WHERE cu.семестр = 3) > (SELECT AVG(cu.часы) FROM curriculum cu WHERE cu.семестр = 3))


*!*	SELECT cu.преподаватель_id, count(cu.часы) ;
*!*	from curriculum cu;
*!*	GROUP BY преподаватель_id;
*!*	having count(cu.часы) > 10&&(SELECT TOP 1 AVG(cu1.часы) from curriculum cu1 ORDER by AVG(cu1.часы))

*!*	SELECT cu.преподаватель_id, sum(cu.часы), AVG(cu.часы);
*!*	from curriculum cu;
*!*	WHERE cu.семестр = 3;
*!*	GROUP BY преподаватель_id ;
*!*	having sum(cu.часы) > 100 &&AVG(sum(cu.часы))

*!*	SELECT  a.преподаватель_id, sum_ch ;
*!*	FROM (SELECT cu.преподаватель_id, sum(cu.часы) as sum_ch;
*!*	from curriculum cu;
*!*	WHERE cu.семестр = 3;
*!*	GROUP BY cu.преподаватель_id) a;
*!*	WHERE  sum_ch > (SELECT AVG(sum_ch) FROM (SELECT cu.преподаватель_id, sum(cu.часы) as sum_ch;
*!*	from curriculum cu;
*!*	WHERE cu.семестр = 3;
*!*	GROUP BY cu.преподаватель_id) b)
*

*!*	SELECT  t.фио , sum_ch ;
*!*	FROM (SELECT cu.преподаватель_id, sum(cu.часы) as sum_ch;
*!*	from curriculum cu;
*!*	WHERE cu.семестр = 3;
*!*	GROUP BY cu.преподаватель_id) a, teachers t;
*!*	WHERE  sum_ch > (SELECT AVG(sum_ch) FROM (SELECT cu.преподаватель_id, sum(cu.часы) as sum_ch;
*!*	from curriculum cu;
*!*	WHERE cu.семестр = 3;
*!*	GROUP BY cu.преподаватель_id) b) AND a.преподаватель_id = t.id

*7*
*!*	SELECT curriculum.группа_id, groups.группа, curriculum.семестр, COUNT(вид_ауд_занятий_id) as sem_count, curriculum.вид_ауд_занятий_id;
*!*	from curriculum, groups INTO CURSOR tmp;
*!*	where curriculum.семестр=4 AND вид_ауд_занятий_id=2 AND curriculum.группа_id=groups.id;
*!*	GROUP BY curriculum.группа_id, groups.группа, curriculum.семестр, curriculum.вид_ауд_занятий_id
*!*	SELECT tmp.семестр, tmp.группа_id, tmp.группа, tmp.вид_ауд_занятий_id, tmp.sem_count FROM tmp WHERE sem_count in(SELECT max(sem_count) from tmp)

*!*	SELECT ca1.Кафедра from Cafedras ca1;
*!*	where not in (SELECT  ca.Кафедра FROM curriculum cu, teachers te_a ,Cafedras ca;
*!*	WHERE cu.Преподаватель_id = te_a.id AND te_a.кафедра_id = ca.id AND cu.Группа_id = 6 and ca1.кафедра = ca.кафедра)


SELECT ca1.Кафедра from Cafedras ca1;
where ca1.Кафедра NOT in (SELECT ca.Кафедра FROM curriculum cu, teachers te_a ,Cafedras ca;
WHERE cu.Преподаватель_id = te_a.id AND te_a.кафедра_id = ca.id AND cu.Группа_id = 6 and ca1.кафедра = ca.кафедра)

