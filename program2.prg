*!*	SELECT Subjects.id, Cafedras.id;
*!*	FROM Subjects, Cafedras, teachers, curriculum;
*!*	WHERE curriculum.�������_id = 15 AND teachers.�������_id = 
* 1*
*!*	SELECT distinct su.�������, ca.�������, te.���;
*!*	FROM curriculum cu;
*!*	join Subjects su ON su.id = cu.�������_id;
*!*	JOIN teachers te ON te.id = cu.�������������_id;
*!*	join Cafedras ca ON ca.id = te.�������_id;
*!*	WHERE cu.�������_id = 1

*2*
*!*	SELECT distinct ca.������� FROM teachers te_a;
*!*	join Cafedras ca ON ca.id = te_a.�������_id;
*!*	WHERE NOT exists (SELECT * FROM curriculum cu WHERE cu.�������������_id = te_a.id AND cu.������_id = 1)
 
*5*
*SELECT *;
*FROM curriculum cu;
*where count(cu.�����_��������_id), cu.�����_��������_id = 1
*join ref_form_of_control co ON co.�����_�������� = cu.�����_��������_id;

*SELECT �������_id,count(�����_��������_id) FROM curriculum 
*group by �������_id
*where cu.�����_��������_id = 1

*SELECT max(�����_��������_id) FROM curriculum
*SELECT COUNT(�����_��������_id) FROM curriculum cu WHERE cu.�����_��������_id = 1
*??

*SELECT cu.�������_id;
*from curriculum cu;
*WHERE (select MAX(SELECT COUNT(�����_��������_id) FROM curriculum cu WHERE cu.�����_��������_id = 1) FROM curriculum cu)

*4*

*SELECT cu.�������������_id, AVG(cu.����) ;
*from curriculum cu;
*GROUP BY �������������_id
*WHERE 
*(SELECT * FROM curriculum cu WHERE (select COUNT(cu.����) FROM curriculum cu WHERE cu.������� = 3) > (SELECT AVG(cu.����) FROM curriculum cu WHERE cu.������� = 3))


*!*	SELECT cu.�������������_id, count(cu.����) ;
*!*	from curriculum cu;
*!*	GROUP BY �������������_id;
*!*	having count(cu.����) > 10&&(SELECT TOP 1 AVG(cu1.����) from curriculum cu1 ORDER by AVG(cu1.����))

*!*	SELECT cu.�������������_id, sum(cu.����), AVG(cu.����);
*!*	from curriculum cu;
*!*	WHERE cu.������� = 3;
*!*	GROUP BY �������������_id ;
*!*	having sum(cu.����) > 100 &&AVG(sum(cu.����))

*!*	SELECT  a.�������������_id, sum_ch ;
*!*	FROM (SELECT cu.�������������_id, sum(cu.����) as sum_ch;
*!*	from curriculum cu;
*!*	WHERE cu.������� = 3;
*!*	GROUP BY cu.�������������_id) a;
*!*	WHERE  sum_ch > (SELECT AVG(sum_ch) FROM (SELECT cu.�������������_id, sum(cu.����) as sum_ch;
*!*	from curriculum cu;
*!*	WHERE cu.������� = 3;
*!*	GROUP BY cu.�������������_id) b)
*

*!*	SELECT  t.��� , sum_ch ;
*!*	FROM (SELECT cu.�������������_id, sum(cu.����) as sum_ch;
*!*	from curriculum cu;
*!*	WHERE cu.������� = 3;
*!*	GROUP BY cu.�������������_id) a, teachers t;
*!*	WHERE  sum_ch > (SELECT AVG(sum_ch) FROM (SELECT cu.�������������_id, sum(cu.����) as sum_ch;
*!*	from curriculum cu;
*!*	WHERE cu.������� = 3;
*!*	GROUP BY cu.�������������_id) b) AND a.�������������_id = t.id

*7*
*!*	SELECT curriculum.������_id, groups.������, curriculum.�������, COUNT(���_���_�������_id) as sem_count, curriculum.���_���_�������_id;
*!*	from curriculum, groups INTO CURSOR tmp;
*!*	where curriculum.�������=4 AND ���_���_�������_id=2 AND curriculum.������_id=groups.id;
*!*	GROUP BY curriculum.������_id, groups.������, curriculum.�������, curriculum.���_���_�������_id
*!*	SELECT tmp.�������, tmp.������_id, tmp.������, tmp.���_���_�������_id, tmp.sem_count FROM tmp WHERE sem_count in(SELECT max(sem_count) from tmp)

*!*	SELECT ca1.������� from Cafedras ca1;
*!*	where not in (SELECT  ca.������� FROM curriculum cu, teachers te_a ,Cafedras ca;
*!*	WHERE cu.�������������_id = te_a.id AND te_a.�������_id = ca.id AND cu.������_id = 6 and ca1.������� = ca.�������)


SELECT ca1.������� from Cafedras ca1;
where ca1.������� NOT in (SELECT ca.������� FROM curriculum cu, teachers te_a ,Cafedras ca;
WHERE cu.�������������_id = te_a.id AND te_a.�������_id = ca.id AND cu.������_id = 6 and ca1.������� = ca.�������)

