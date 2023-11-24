drop procedure if exists login1;
delimiter $
create procedure login1()
begin
create table login1(username varchar(20), password varchar(20), emailid varchar(20));
end $
delimiter ;


drop procedure if exists addUser;
delimiter $
create procedure addUser(username varchar(20), password varchar(20), emailid varchar(20))
BEGIN
	insert into login1 values (username, password, emailid);
	select "Data inserted Successfully";
end $
delimiter ;