/*Encadeamento de chaves relacionais*/

/*select composto*/
select 
	emp.nome as empregado,
	depto.nome as departamento
 from 
	 empregado emp,
	 departamento depto
 where
	depto.cod_depto = emp.cod_depto;
    
    /*Inner e Left Join */
    
    select 
		emp.nome as empregado,
        count(dep.cod_dep) as dependentes
    from
    empregado empregado
    inner join 
    dependente dep
    where
    emp.cod_emp = dep.cod_emp
    group by
    emp.nome;
    