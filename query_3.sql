-- 1) Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
 SELECT `students`.`name`, `students`.`surname`
 FROM `students`
 JOIN `degrees`
 ON `degrees`.`id` = `students`.`degree_id`
 WHERE `degrees`.`name` = 'Corso di Laurea in Economia';

 -- 2) Selezionare tutti i Corsi di Laurea del Dipartimento di Neuroscienze
SELECT `degrees`.`name`
FROM `degrees`
JOIN `departments`
ON `departments`.`id` = `degrees`.`department_id`
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze'