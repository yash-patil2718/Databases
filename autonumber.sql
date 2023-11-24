Drop function if exists autoNumber;
delimiter ^
create function autoNumber(_studentid int) returns int
Deterministic
BEGIN 
	select max(studentid)+1 into @z from student_new;
	return @z;
End ^
delimiter ;
