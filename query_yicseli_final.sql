SELECT gra, gru grupo,count(sex)Niñas,(select count(*) FROM estadistica.altas_alumnos where gra = 1 and gru = 'B') - count(sex
) niños  FROM estadistica.altas_alumnos
where sex ='femenino' and gra = 1 and gru = 'B'
group by gra,gru union 

SELECT gra, gru grupo,count(sex)Niñas,(select count(*) FROM estadistica.altas_alumnos where gra = 1 and gru = 'A') - count(sex
) niños  FROM estadistica.altas_alumnos
where sex ='femenino' and gra = 1 and gru = 'A'
group by gra,gru union


SELECT gra, gru grupo,count(sex)Niñas,(select count(*) FROM estadistica.altas_alumnos where gra = 2 and gru = 'A') - count(sex
) niños  FROM estadistica.altas_alumnos
where sex ='femenino' and gra = 2 and gru = 'A'
group by gra,gru union

SELECT gra, gru grupo,count(sex)Niñas,(select count(*) FROM estadistica.altas_alumnos where gra = 1 and gru = 'B') - count(sex
) niños  FROM estadistica.altas_alumnos
where sex ='femenino' and gra = 1 and gru = 'B'
group by gra,gru union 

SELECT gra, gru grupo,count(sex)Niñas,(select count(*) FROM estadistica.altas_alumnos where gra = 1 and gru = 'A') - count(sex
) niños  FROM estadistica.altas_alumnos
where sex ='femenino' and gra = 1 and gru = 'A'
group by gra,gru union


SELECT gra, gru grupo,count(sex)Niñas,(select count(*) FROM estadistica.altas_alumnos where gra = 2 and gru = 'B') - count(sex
) niños  FROM estadistica.altas_alumnos
where sex ='femenino' and gra = 2 and gru = 'B'
group by gra,gru
;
;