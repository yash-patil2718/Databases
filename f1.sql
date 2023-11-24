drop function if exists f1;
delimiter ^
CREATE function F1(_studentid int) returns int
Deterministic
BEGIN
	select _studentid into @z from student where _studentid=studentid;
	if (_studentid=@z) then 
	select namefirst,namelast into @a,@b from student where _studentid=studentid ;
	set @x = concat("namefirst:" ,@a ,"||", "namelast :" ,@b);
	return @x;
	end if;
	return ' student does not exists' ;
	
end ^
delimiter ;
