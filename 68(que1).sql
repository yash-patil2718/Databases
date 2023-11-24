
drop function if exists sumSalary;
delimiter $
create function sumSalary(_deptno int) returns int
deterministic
BEGIN
	declare x int;
	declare flag bool;
	select distinct(true) into flag from emp where deptno = _deptno;
	if flag then
	select sum(sal) into x from emp where deptno=_deptno;
	return x;
	end if;
end $
delimiter ;