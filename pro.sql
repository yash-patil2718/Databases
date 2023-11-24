drop trigger if exists insertStudent;
delimiter $
create trigger insertStudent before insert on login for each row
begin
	insert into login values(new.username, new.password, new.emailid);
    -- select "Record Inserted Successfully";
end $
delimiter ;
