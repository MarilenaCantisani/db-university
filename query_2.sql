-- 1) Contare quanti iscritti ci sono stati ogni anno 
SELECT YEAR(`enrolment_date`) AS `year`, COUNT(*) AS `tot_enrolled`
FROM `students`
GROUP BY `year`;