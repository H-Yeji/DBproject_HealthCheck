# Health Check🎾
![image](https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/38fb1ecf-d0dd-4492-be0a-eb60d4c87e75)
<br>
<br>
<hr> 

### 😄 팀원 소개
<table>  
  <tbody>
    <tr>
      <td align="center"><a href="https://github.com/qkdrmawll"><img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/121751114/a0ee4194-aef1-4144-b4a9-f5e161cea4ca" width="150px" height="150px" alt=""/><br /><sub><b>팀장 : 방은지 </b></sub></a><br /></td>
      <td align="center"><a href="https://github.com/tteia"><img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/121751114/e8510022-a8c4-4eb2-99b1-816f852864f1" width="150px" height="150px" alt=""/><br /><sub><b>팀원 : 최아영 </b></sub></a><br /></td>
      <td align="center"><a href="https://github.com/H-Yeji"><img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/121751114/991a3c30-25a0-43c3-91f1-25707b40767b" width="150px" height="150px" alt=""/><br /><sub><b>팀원 : 홍예지 </b></sub></a><br /></td>
      <td align="center"><a href="https://github.com/leem5514"><img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/121751114/b93378a9-5876-402d-9188-f48ee8f6a53a" width="150px" height="150px" alt=""/><br /><sub><b>팀원 : 이명규 </b></sub></a><br /></td>
    </tr>
  </tbody>
</table>
<br>
<hr> 
<br>

### 💡 프로젝트 개요 및 필요성  
<pre><code> 
최근 고령화 사회의 지속적으로 건강에 대한 국민들의 관심이 급증하고 있습니다.
이에 따라 개인 운동량의 증가 및 식습관 개선에 대해 많은 사람들이 신경을 기울이고 있으며,
문화 체육 관광부에서 진행하는 국민들의 생활체육 참여 조사율 또한 매년 증가하고 있는 추세입니다. 

<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/121751114/bc1bb9ad-8c14-4263-a57e-5e62d754eef5"/>

많은 기업들이 헬스케어 디바이스 개발을 진행하고 있으며,
체육분야 예산을 확대하는 등 상승하는 정부의 관심 또한 사람들의 '건강' 에 대한 관심도가 높아지고 있음을 증명하고 있습니다.

HEALTH_CHECK는 사용자가 운동 목표를 설정하고 이를 기록하며, 현재 상태를 확인할 수 있도록 도와주는 플랫폼입니다.
이 시스템은 사용자의 운동 및 영양 관리, 진행 상황 추적, 목표 달성 지원을 위한 다양한 기능을 제공합니다.
이를 통해 사용자는 체계적으로 자신의 운동 계획을 관리하고, 목표를 효과적으로 달성할 수 있습니다.
	
</code></pre>
<br>

### 📌 기술 스택
 <img src="https://img.shields.io/badge/mysql-4479A1?style=for-the-badge&logo=mysql&logoColor=white">&nbsp;&nbsp;<img src="https://img.shields.io/badge/mariaDB-003545?style=for-the-badge&logo=mariaDB&logoColor=white">&nbsp;&nbsp;<img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white">&nbsp;&nbsp;<img src="https://img.shields.io/badge/git-F05032?style=for-the-badge&logo=git&logoColor=white">&nbsp;&nbsp;<img src="https://img.shields.io/badge/Notion-black?style=for-the-badge&logo=Notion&logoColor=white"/>
<br>
<br> 
<hr> 

### 📅 WBS (Work Breakdown Structure)
[[WBS 바로가기]](https://docs.google.com/spreadsheets/d/1kbN5XonKJiKncqxmrI0m85HVIuabvkAwmK7VqzdzByo/edit#gid=0)<Br> 
<br> 
![image](https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/cf2309c7-c71c-4612-a116-5cd578df83d9)
<br>
<br>

### 📝 요구사항 명세서 
[[요구사항 명세서 바로가기]](https://docs.google.com/spreadsheets/d/1kbN5XonKJiKncqxmrI0m85HVIuabvkAwmK7VqzdzByo/edit?usp=sharing)
<br>
<br> 
<hr> 

### 🎨 ERD
![Copy of 운동 관리 시스템](https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/89395493/88226a49-b815-43f0-8dfe-0851a624f365)
<br>
<br>
<hr> 

### 🖥️ 프로시저 
<details>
	<summary>🖇️ 프로시저 테스트</summary>
	<br> 
	✔️ 회원 가입 프로시저 <br> 
	
 ```sql  
	DELIMITER //
	CREATE PROCEDURE 회원가입(in 닉네임 VARCHAR(255), in 이름 VARCHAR(255), in 이메일 VARCHAR(255), in 비밀번호 VARCHAR(255), in 전화번호 VARCHAR(255), in 나이 INT, in 성별 VARCHAR(255))
	BEGIN  
		INSERT INTO users(nickname, name, email, password, phone_number, age, sex)
		VALUES (닉네임, 이름, 이메일, 비밀번호, 전화번호, 나이, 성별);
	END
	// DELIMITER ;
```

<br>
<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/0652b889-338a-4572-bbd3-3a19db149c75">
	<pre><code>
	CALL 회원가입('suguri', 'suguri', 'suguri@naver.com', '2341', '010-1111-2222', 27, 'F'); 
	</code></pre>
	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/0ca77572-a380-4d7c-aed3-a28eda91df9d">
	user_id=5 회원 추가 
<br>
<br>
<hr>
✔️ 목표 등록 프로시저 <br>

```sql
	DELIMITER //
	CREATE PROCEDURE 목표등록(in 닉네임 VARCHAR(255), in 목표타입 VARCHAR(255), in 목표기한 VARCHAR(255), in 목표무게 DECIMAL(10,2))
	BEGIN  
		DECLARE userId int;
		SELECT id into userId from users where nickname = 닉네임;
		INSERT INTO goal(user_id, goal, target_date, target_kg)
    		VALUES (userId, 목표타입, 목표기한, 목표무게);
	END
	// DELIMITER ;

  	CALL 목표등록('yeji', '근육량증가', '2024-10-10', 24.02); 
```

<br> 
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/ecfd7413-e964-4c85-8dae-273b19f6d5ce", height=150><br> 
  user_id=2 회원의 새로운 목표 추가 (근육량증가)<br>
<br>
<hr> 
✔️ 회원 상세 등록 프로시저 <br>

```sql
	delimiter //
	create procedure 회원_인바디_정보_입력(in 닉네임 varchar(255), in 키 decimal(10,2), in 몸무게 decimal(10,2), in bmi decimal(10,2),
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
				insert into progress(user_id, goal_id, remain_kg) values(userID, goalID_M, 몸무게-targetKG_W);
			end if;
		end if;
    
    		# 목표치를 달성해 남은 목표가 0kg인 경우 '진행중' > '완료'로 업데이트 
    		update goal set status='완료' where id in (select goal_id from progress where remain_kg<=0.00);
    
    		# 조회 
    		select * from user_detail;
	end
	// delimiter ; 
```

<br> 
[ 회원 상세 기록 추가 + 해당 회원 목표에 관한 진행상황 내역이 있다면 업데이트 ] <br> 
	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/8d168d21-7d40-4d49-aaf1-eb53a90d49b4", height=110><br> 
	회원 인바디 측정 결과 등록 전 회원 상세 테이블<br> 
	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/0c5a290f-8be3-4dae-9975-22768f9021ec", height=110><br>
	회원 인바디 측정 결과 등록 전 진행상황 테이블 <br>
	<br> 
	<pre><code>
	call 회원_인바디_정보_입력('tteia', 168, 50, 17.71, 24.03, 18.01, 1450); 
	</code></pre>
	닉네임 tteia 회원의 인바디 측정 결과 등록<br>
	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/86ab006d-7b0f-4db9-8d12-8804eaf2291e", height=110><br>
	측정 결과가 회원 상세 테이블에 추가됨<br>
	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/f267ab88-9e27-4875-b631-905729f040fe", height=110><br> 
	등록된 인바디 측정 결과를 토대로 진행상황 테이블의 남은 목표 갱신<br> 
	<br> 
	[ 회원 상세 기록 추가 + 진행상황 업데이트 + 상태 변경 ]<br> 
	<pre><code>
	call 회원_인바디_정보_입력('tteia', 168, 50, 17.71, 25.03, 17.01, 1470); 
	</code></pre>
 	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/d83982ad-1180-46fe-b1ca-aed674904385", height=110><br>
	user_id=3 회원이 목표를 달성해서 남은 목표가 없음 확인<br>
	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/586d9cb0-e9ba-42ac-aef5-8d1784ca4e65", height=110><br> 
	user_id=3 회원의 목표 상태 '진행중' > '완료'로 업데이트<br> 
	<br> 
 	[ 회원 상세 기록 추가 + 해당 회원 목표에 관한 진행상황 내역이 없다면 추가 ]<br> 
	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/82631599-aada-4f72-ba5f-f7e0afa9d7a7", height=110><br> 
	user_id=2 회원이 '근육량증가'라는 새로운 목표 등록<br> 
	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/116091798/558eafb3-fcd7-41fc-b68f-7d9188c2a689", height=130><br> 
	새로 등록한 목표에 관한 진행상황 내역은 아직 없음<br>
	<br> 
	<pre><code>
	call 회원_인바디_정보_입력('yeji', 165, 48, 17.81, 23.02, 17.25, 1430);  
	</code></pre>
	user_id=2 새로운 인바디 측정 완료<br> 
	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/e9b8640a-067a-4c05-97fc-ccfab579b2ac", height=150><br> 
	해당 목표에 대한 progress 새로 등록 성공 ✌🏻 
	<br>
	<br> 
 <hr> 
 
✔️ 진행 상황 조회 프로시저 <br>

```sql
	delimiter //
	create procedure 진행상황_조회(in 닉네임 varchar(255))
	begin
		declare userID int;
    
		select id into userID from users where nickname=닉네임;
		select * from progress where user_id=userID;
	end
	// delimiter ;

	call 진행상황_조회('tteia');  
```

<br> 
<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/71df5b66-d221-402e-851a-aaceffb120f9", height=100><br> 
닉네임 tteia 회원의 진행상황 조회<br> 
<br>
<hr>
✔️ 영양 섭취 프로시저 <br>

```sql
	DELIMITER //
	CREATE PROCEDURE 영양관리시스템( IN 닉네임 VARCHAR(255), IN 섭취일 DATE, IN 섭취시간 ENUM('아침','점심','저녁','간식'), IN 탄수화물흡수량 INT,
    					IN 단백질흡수량 INT, IN 지방흡수량 INT, IN 총칼로리섭취량 INT)
	BEGIN
    		DECLARE user_id_val INT;
    		SELECT id INTO user_id_val FROM users WHERE nickname = 닉네임;
    		IF user_id_val IS NOT NULL THEN
        		INSERT INTO nutritional_management (user_id, intake_date, intake_time, car_kcal, pro_kcal, fat_kcal, total_kcal)
        		VALUES (user_id_val, 섭취일, 섭취시간, 탄수화물흡수량, 단백질흡수량, 지방흡수량, 총칼로리섭취량);
        		SELECT * FROM nutritional_management;
    		ELSE
        		SELECT CONCAT(닉네임, ' 값은 없습니다.') AS message;
    		END IF;
	END //
	DELIMITER ;

  	call db_project.영양관리시스템('yeji', '2024-06-02', '아침', 280, 30, 29, 547);  
```

<br>
섭취한 영양 기록 입력 받으면<br>
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/9497159c-8875-4b30-8cc4-3156d06238ab", height=250><br> 
  테이블에 기록 추가<br>
<br> 
<hr>
✔️ 일일 섭취량 조회<br>

```sql
	DELIMITER //
	CREATE PROCEDURE 사용자의당일섭취량(IN 닉네임 VARCHAR(255))
	BEGIN
    		DECLARE user_id_val INT;
    		DECLARE today DATE;
    		SELECT id INTO user_id_val FROM users WHERE nickname = 닉네임;
    		SET today = CURDATE();
    		IF user_id_val IS NOT NULL THEN
        		SELECT 
            			SUM(car_kcal) AS 탄수화물섭취량, SUM(pro_kcal) AS 단백질섭취량,
            			SUM(fat_kcal) AS 지방섭취량, SUM(total_kcal) AS 총섭취량
        		FROM nutritional_management
        		WHERE user_id = user_id_val AND intake_date = today;
    		ELSE
        		SELECT CONCAT(닉네임, ' 은 없습니다.') AS message;
    		END IF;
	END //
	DELIMITER ;

	call 사용자의당일섭취량('yeji');  
```

<br>
닉네임을 입력 받으면<br> 
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/116091798/929b5bfd-57df-4bf7-88f0-4dd0f0d29b28", height=100><br> 
  CURDATE()를 활용해서 당일 기준 사용자가 섭취한 탄수화물, 단백질, 지방, 일일 섭취 칼로리를 합하여 제공
<br>
<br>
<hr>
✔️ 친구 추가 프로시저<br>

```sql
	DELIMITER //
	CREATE PROCEDURE 친구추가 (in 내_닉네임 varchar(255), in 친구_닉네임 varchar(255))
	BEGIN
		DECLARE userId1 INT;
		DECLARE userId2 INT;
		SELECT id into userId1 from users where nickname = nickname1;
		SELECT id into userId2 from users where nickname = nickname2;
		INSERT INTO friend (user_id1,user_id2) values (userId1, userId2);
	END //
	DELIMITER  ;

	CALL 친구추가('yeji','dding2');  
```

<br> 
<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/3d43ac13-4ee3-43c4-aecf-c96e62e17b25", height=100><br> 
  user_id=2인 yeji와 user_id=4인 dding2가 친구 목록에 추가 (친구 맺음) 
  <br>
  <br> 
<hr>
✔️ 친구 목표 조회 프로시저 <br> 

```sql
	DELIMITER //
	CREATE PROCEDURE 친구_목표_조회 (IN my_nickname VARCHAR(255), IN friend_nickname VARCHAR(255))
	BEGIN
		DECLARE my_id INT;
    		DECLARE friend_id INT;
    
    		SELECT id INTO my_id FROM users WHERE nickname = my_nickname;
    		SELECT id INTO friend_id FROM users WHERE nickname = friend_nickname;
    
    		IF EXISTS (SELECT 1 FROM friend WHERE user_id1 = my_id AND user_id2 = friend_id) THEN
    			SELECT u.nickname, g.goal FROM goal g inner join users u on u.id = g.user_id WHERE user_id = friend_id;
    		ELSEIF (SELECT 1 FROM friend WHERE user_id1 = friend_id AND user_id2 = my_id) THEN
    			SELECT u.nickname, g.goal FROM goal g inner join users u on u.id = g.user_id WHERE user_id = friend_id;
    		ELSE
        		SELECT 'Not friends' AS Message;
    		END IF;
	END //
	DELIMITER ;

	CALL 친구_목표_조회('yeji','dding2') ;  
```

<br> 
<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/85f0ef2e-1eff-4b1b-af07-9a2f6bbfdc23", height=110><br> 
  입력받은 두 회원이 친구일 경우 -> 친구의 목표 조회 가능<br>
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/17ea63f9-e58e-4110-bc3f-2e55cdf95a23", height=110><br> 
  입력받은 두 회원이 친구가 아닐 경우 -> 친구의 목표 조회 불가능<br> 
</details> 
