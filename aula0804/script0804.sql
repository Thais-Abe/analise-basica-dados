use empregados_db;
/*Seletores Acumuladores e filtros*/
select * from departamento where cod_depto > 2;
select * from departamento where cod_depto %2 = 0;
select count(*) as numero_depto from departamento;
select count(*) as numero_depto, (2+3) as conta from departamento;
select nome from departamento where cod_depto > 3;

/*Prática de Acumuladores e Filtros*/
select * from empregado;
select * from empregado where salario <= (1413 * 4);
select * from empregado where cod_depto = 1;
select * from empregado where cod_depto in(1,2,5);
select * from empregado where cod_depto not in(1,2,5);
select * from empregado where not salario <= (1413 * 3);
select * from empregado where nome like "ANA %";