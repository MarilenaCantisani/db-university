-- 1) Contare quanti iscritti ci sono stati ogni anno: 
SELECT YEAR(`enrolment_date`) AS `year`, COUNT(*) AS `tot_enrolled`
FROM `students`
GROUP BY `year`;

-- 2) Contare gli insegnanti che hanno l'ufficio nello stesso edificio: 
SELECT `office_address`, COUNT(*) AS `tot_teachers`
FROM `teachers`
GROUP BY `office_address`;