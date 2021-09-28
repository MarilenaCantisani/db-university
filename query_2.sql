-- 1) Contare quanti iscritti ci sono stati ogni anno: 
SELECT YEAR(`enrolment_date`) AS `year`, COUNT(*) AS `tot_enrolled`
FROM `students`
GROUP BY `year`;

-- 2) Contare gli insegnanti che hanno l'ufficio nello stesso edificio: 
SELECT `office_address`, COUNT(*) AS `tot_teachers`
FROM `teachers`
GROUP BY `office_address`;

-- 3) Calcolare la media dei voti di ogni appello d'esame:
SELECT `exam_id`, ROUND(AVG(`vote`), 2) AS `average_votes`
FROM `exam_student`
GROUP BY `exam_id`;

-- 4) Contare quanti corsi di laurea ci sono per ogni dipartimento: 
SELECT `department_id`, COUNT(*) AS `tot_degreee_courses`
FROM `degrees`
GROUP BY `department_id`;