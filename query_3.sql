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
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze';

-- 3) Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `courses`.`name`
FROM `course_teacher`
JOIN `teachers`
ON `teachers`.`id` = `course_teacher`.`teacher_id`
JOIN `courses`
ON `courses`.`id` = `course_teacher`.`course_id`
WHERE `teachers`.`id` = 44;

/* 4) Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti 
e il relativo dipartimento, in ordine alfabetico per cognome e nome */
SELECT  `students`.`surname`, `students`.`name`, `degrees`. `name`,`degrees`. `level`, `departments`.`name`
FROM `students`
JOIN `degrees`
ON `degrees`.`id` = `students`.`degree_id`
JOIN `departments`
ON `departments`.`id` = `degrees`.`department_id`
ORDER BY `students`.`surname`, `students`. `name`;

-- 5) Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT `degrees`.`name`, `courses`.`name`, `teachers`.`name`
FROM `course_teacher`
JOIN `courses`
ON `courses`.`id` = `course_teacher`.`course_id`
JOIN `teachers`
ON `teachers`.`id` = `course_teacher`.`teacher_id`
JOIN `degrees`
ON `degrees`.`id` = `courses`.`degree_id`;