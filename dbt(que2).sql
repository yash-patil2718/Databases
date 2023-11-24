drop trigger if exists insertDuplicate;
delimiter $
create trigger insertDuplicate before insert on dept for each row
begin 
	insert into deptLog values(new.deptno,CURRENT_DATE,CURRENT_TIME,"insert",new.dname, new.loc, new.pwd);	
end $
delimiter ;
