-- 회원 상세 추가, 진행상황 자동 등록 
delimiter //
create procedure 회원_인바디_정보_입력(in 닉네임 varchar(255), in 키 decimal(10,2), 
								  in 몸무게 decimal(10,2), in bmi decimal(10,2),
                  in 골격근량 decimal(10,2), in 체지방량 decimal(10,2), in bmr int)
begin 
		declare userID int;
    declare targetKG_M decimal(10,2); # goal에 있는 목표 근육량 
    declare targetKG_W decimal(10,2); # goal에 있는 목표 체중  
    declare goalID_M int; # 해당 회원의 목표(근육증가)id
    declare goalID_W int; # 해당 회원의 목표(체중감소)id
		# 받아온 닉네임으로 user_id찾기
    select id into userID from users where nickname=닉네임;
    
    # 찾아온 userID와 input값을 이용해서 회원 인바디 측정 결과 테이블에 등록 
		insert into user_detail(user_id, height, weight, bmi, skeletal_muscle_mass, body_fat_percentage, bmr)
    values(userID, 키, 몸무게, bmi, 골격근량, 체지방량, bmr);
    
    # 인바디 결과 등록과 동시에 progress 테이블에 정보 업데이트 
    # 근육량 증가 업데이트
    select id, target_kg into goalID_M, targetKG_M from goal where user_id=userID and goal='근육량증가' and status='진행중';
    if goalID_M is not null then
			# 해당 회원에 해당하는 목표에 관한 progress내역이 있으면 update, 없으면 insert 
			if exists (select id from progress where goal_id=goalID_M) then
				update progress set remain_kg=targetKG_M-골격근량 where goal_id=goalID_M;
			else
				insert into progress(user_id, goal_id, remain_kg) values(userID, goalID_M, targetKG_M-골격근량);
			end if;
		end if;
    
    # 체중 감량 업데이트
    select id, target_kg into goalID_W, targetKG_W from goal where user_id=userID and goal='체중감량' and status='진행중';
    if goalID_W is not null then
			# 해당 회원에 해당하는 목표에 관한 progress내역이 있으면 update, 없으면 insert 
			if exists (select id from progress where goal_id=goalID_W) then
				update progress set remain_kg=몸무게-targetKG_W where goal_id=goalID_W;
			else
				insert into progress(user_id, goal_id, remain_kg) values(userID, goalID_W, 몸무게-targetKG_W);
			end if;
		end if;
    
    # 목표치를 달성해 남은 목표가 0kg인 경우 '진행중' > '완료'로 업데이트 
    update goal set status='완료' where id in (select goal_id from progress where remain_kg<=0.00);
    
    # 조회 
    select * from user_detail;
end
// delimiter ; 

-- 회원 상세 조회
delimiter //
create procedure 회원_상세_조회(in 닉네임 varchar(255))
begin
	declare userID int;
    
	select id into userID from users where nickname=닉네임;
	select * from user_detail where user_id=userID;
end
// delimiter ; 

-- 진행상황 조회
delimiter //
create procedure 진행상황_조회(in 닉네임 varchar(255))
begin
	declare userID int;
    
	select id into userID from users where nickname=닉네임;
	select * from progress where user_id=userID;
end
// delimiter ; 
