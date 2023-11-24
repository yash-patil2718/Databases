drop procedure if exists addUser;
delimiter $
create procedure addUser(in username varchar(30), in password varchar(20), in emailid varchar(50))
BEGIN
	insert into login VALUES(username, password, emailid);
	select "Record inserted successfully";
end $
delimiter ;