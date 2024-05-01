/* case, when, then */

select *,
case
	when salario > (1413*2) then (salario * 1.07)
	else(salario * 1.15)
	end as aumento
from empregado;

delimiter //
create procedure spu_dissidio_anual(in taxa1 decimal, in taxa2 decimal, in minimo decimal)
begin
	create temporary table tmp_dissidio_anual
    select *,
    case
    when (salario > (minimo *2)) then (salario * taxa1)
    else(salario * taxa2)
    end as aumento
    from empregado;
    
    select * from tmp_dissidio_anual;
    
    start transaction;
    update empregado 
    set salario = (select aumento 
    from tmp_dissidio_anual temp, empregado emp 
    where emp.cod_emp = temp.cod.emp);
    select * from empregado;
    drop table tmp_dissidio_anual;
end
//