--운동기록등록
delimiter //
create procedure 운동기록_등록(in 닉네임 varchar(255), in 소모한칼로리 decimal(10,2), in 시작시간 datetime, in 끝난시간 datetime)
begin
	declare userID int;
    
	select id into userID from users where nickname=닉네임;
	insert into exercise_record(user_id, calories_burned, start_time, end_time)
  values(userID, 소모한칼로리, 시작시간, 끝난시간);
    
    select * from exercise_record;
end
// delimiter ; 
