# Health Check🎾
![image](https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/38fb1ecf-d0dd-4492-be0a-eb60d4c87e75)
<br>
<br>

<hr> 

### 😄 팀원 소개
<table>  
  <tbody>
    <tr>
      <td align="center"><a href="https://github.com/qkdrmawll"><img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/841a28b9-d43a-4d82-baa7-d02e683d364f" width="150px;" alt=""/><br /><sub><b>팀장 : 방은지 </b></sub></a><br /></td>
      <td align="center"><a href="https://github.com/tteia"><img src="https://github.com/qkdrmawll/git_practice/assets/89395493/3c0b7f9f-c112-4144-8ed6-331089ec8416" width="150px;" alt=""/><br /><sub><b>팀원 : 최아영 </b></sub></a><br /></td>
      <td align="center"><a href="https://github.com/H-Yeji"><img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/cef94f09-9a8b-4abb-b573-c90e649117d4" width="150px;" alt=""/><br /><sub><b>팀원 : 홍예지 </b></sub></a><br /></td>
      <td align="center"><a href="https://github.com/leem5514"><img src="https://github.com/qkdrmawll/git_practice/assets/89395493/abb10bf0-0f00-4ac6-b1aa-073708b9396e" width="150px;" alt=""/><br /><sub><b>팀원 : 이명규 </b></sub></a><br /></td>
    </tr>
  </tbody>
</table>
<br>

<hr> 

### 💡 프로젝트 개요 
<pre><code>
HEALTH_CHECK는 사용자가 운동 목표를 설정하고 이를 기록하며, 현재 상태를 확인할 수 있도록 도와주는 플랫폼입니다.
이 시스템은 사용자의 운동 및 영양 관리, 진행 상황 추적, 목표 달성 지원을 위한 다양한 기능을 제공합니다.
이를 통해 사용자는 체계적으로 자신의 운동 계획을 관리하고, 목표를 효과적으로 달성할 수 있습니다.
	
</code></pre>
<br>

### 📌 기술 스택
 <img src="https://img.shields.io/badge/mysql-4479A1?style=for-the-badge&logo=mysql&logoColor=white">&nbsp;&nbsp;<img src="https://img.shields.io/badge/mariaDB-003545?style=for-the-badge&logo=mariaDB&logoColor=white">&nbsp;&nbsp;<img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white">&nbsp;&nbsp;<img src="https://img.shields.io/badge/git-F05032?style=for-the-badge&logo=git&logoColor=white"> 
<br>
<br> 

<hr> 

### 📅 WBS (Work Breakdown Structure)
[[WBS 바로가기]](https://docs.google.com/spreadsheets/d/1kbN5XonKJiKncqxmrI0m85HVIuabvkAwmK7VqzdzByo/edit#gid=0)<Br> 
<br> 
![image](https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/c7f092df-e912-4a57-80b0-376bb21302dc) 
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

### 💻 SQL - 테이블 
```sql
	# (1) 회원 테이블 
	CREATE TABLE users (
    		id INT AUTO_INCREMENT,
    		nickname VARCHAR(255) UNIQUE NOT NULL,
    		name VARCHAR(255),
    		email VARCHAR(255) UNIQUE NOT NULL,
    		password VARCHAR(255) NOT NULL,
    		phone_number VARCHAR(20), 
    		created_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP NOT NULL,
    		age INT NOT NULL,
    		sex ENUM('M', 'F') NOT NULL,
    		delYN ENUM('Y', 'N') DEFAULT 'N',
    		primary key(id) 
	);

	# (2) 회원 상세 테이블
	CREATE TABLE user_detail (
		id INT AUTO_INCREMENT,
		user_id INT NOT NULL,
		height DECIMAL(10,2) NOT NULL,
		weight DECIMAL(10,2) NOT NULL,
		bmi DECIMAL(10,2) NOT NULL,
		skeletal_muscle_mass DECIMAL(10,2) NOT NULL,
		body_fat_percentage DECIMAL(10,2),
		created_time DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
		delYN ENUM('Y', 'N') DEFAULT 'N',
		bmr INT,
		primary key(id),
		foreign key(user_id) references users(id) 
  	);

	# (3) 프로필 테이블
	CREATE TABLE profile (
 		id INT AUTO_INCREMENT, 
    		user_id INT NOT NULL,
    		intro VARCHAR(1000),
    		fav_exercise VARCHAR(100),
    		level ENUM('상', '중', '하'),
    		delYN ENUM('Y', 'N') DEFAULT 'N',
    		primary key(id), 
    		foreign key(user_id) references users(id)
  	);

	# (4) 목표 테이블
	CREATE TABLE goal (
    		id INT AUTO_INCREMENT,
    		user_id INT,
    		goal ENUM('체중감량', '근육량증가') NOT NULL,
    		target_date date NOT NULL,
    		target_kg DECIMAL(10, 2) NOT NULL,
    		status enum('진행중', '완료') default '진행중',
    		delYN ENUM('Y', 'N') DEFAULT 'N',
    		primary key(id), 
    		foreign key(user_id) references users(id)
 	);

	# (5) 운동 기록 테이블
	CREATE TABLE exercise_record (
		id INT AUTO_INCREMENT,
		user_id INT NOT NULL,
		calories_burned DECIMAL(10, 2),
		start_time DATETIME,
		end_time DATETIME,
		primary key(id),
		foreign key(user_id) references users(id) 
  	);

	# (6) 진행상황 테이블
	CREATE TABLE progress (
    		id INT AUTO_INCREMENT, 
 		user_id INT NOT NULL,
    		goal_id INT NOT NULL,
    		currentTime date default current_date,
    		remain_kg DECIMAL(10, 2) NOT NULL, 
    		delYN ENUM('Y', 'N') DEFAULT 'N',
    		primary key(id), 
    		foreign key(user_id) references users(id),
		foreign key(goal_id) references goal(id)
	);

	# (7) 영양 관리 테이블
	CREATE TABLE nutritional_management (
		id INT AUTO_INCREMENT,
		user_id INT NOT NULL,
		intake_time ENUM('아침', '점심', '저녁', '간식'),
		intake_date DATE DEFAULT CURRENT_DATE,
		car_kcal INT,
		pro_kcal INT,
		fat_kcal INT,
		total_kcal INT,
		delYN ENUM('Y', 'N') DEFAULT 'N',
		primary key(id),
		foreign key(user_id) references users(id) 
  	);

	# (8) 친구 테이블
	CREATE TABLE friend (
	    	id int auto_increment,
	    	user_id1 int NOT NULL,
	    	user_id2 int NOT NULL,
	    	created_time DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	    	delYN ENUM('Y', 'N') DEFAULT 'N',
	    	primary key(id),
	    	foreign key(user_id1) references users(id),
	    	foreign key(user_id2) references users(id)
  	);

	# (9) 게시글 테이블
	CREATE TABLE post (
	    	id int auto_increment,
	    	user_id int NOT NULL,
	    	title varchar(255) NOT NULL,
	    	contents varchar(3000),
	    	created_time DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	    	hits int NOT NULL	DEFAULT 1,
	    	delYN ENUM('Y', 'N') DEFAULT 'N',
	    	primary key(id),
	    	foreign key(user_id) references users(id)
  	);

	# (10) 댓글 테이블
	CREATE TABLE reply (
	    	id int auto_increment,
		user_id int NOT NULL,
	    	post_id int NOT NULL,
	    	contents varchar(255) NOT NULL,
	    	created_time DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL, 
	    	delYN ENUM('Y', 'N') DEFAULT 'N',
	    	primary key(id),
	    	foreign key(user_id) references users(id),
		foreign key(post_id) references post(id)
  	);

	# (11) 쪽지 테이블
	CREATE TABLE message (
	    	id int auto_increment,
	    	sender int NOT NULL,
	    	receiver int NOT NULL,
	    	texts varchar(1000)	NOT NULL,
	    	created_time DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL, 
	    	delYN ENUM('Y', 'N') DEFAULT 'N',
 		primary key(id),
	    	foreign key(sender) references users(id),
	    	foreign key(receiver) references users(id)
  	);

	# (12) 디바이스 테이블
	CREATE TABLE device (
	    	id int auto_increment,
	    	user_id int NOT NULL,
	    	devices_alias varchar(255) NOT NULL UNIQUE,
	    	serial_number varchar(255) NOT NULL UNIQUE,
	    	created_time DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL, 
	    	delYN ENUM('Y', 'N') DEFAULT 'N',
	    	primary key(id),
	    	foreign key(user_id) references users(id)
  	); 
```
<br>

<hr> 

### ✔️ 프로시저 
<details> 
	<summary>회원 기능 프로시저</summary>
	<br> 
	🔶 회원 가입 프로시저 
	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/0652b889-338a-4572-bbd3-3a19db149c75">
	<pre><code>
	CALL signUp('suguri', 'suguri', 'suguri@naver.com', '2341', '010-1111-2222', 27, 'F'); 
	</code></pre>
	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/0ca77572-a380-4d7c-aed3-a28eda91df9d">
	user_id=5 회원 추가 
	<br>
	<br> 
	🔶 회원 정보 수정 프로시저
	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/0652b889-338a-4572-bbd3-3a19db149c75">
	<pre><code>
	CALL userEdit('tteia', 'minji', '8888', '010-8888-4444', '22');
	</code></pre>
	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/89eada0c-eb6d-4138-ae34-127868fa2dd4">
	user_id=3 회원 정보 변경 
	<br>
	<br> 
	🔶 회원 탈퇴 프로시저
	<pre><code>
	CALL userEdit('tteia', 'minji', '8888', '010-8888-4444', '22');
	</code></pre>
	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/5a571e6e-3092-4344-8291-82992f470545">
	user_id=5 회원 탈퇴 (delYN 컬럼값 'Y') 
</details> 
<details> 
  <summary>회원 상세 테이블 프로시저</summary>
  <br> 
	🔶 회원 상세 기록 추가 + 진행상황 등록 및 업데이트 + status 변경 프로시저<br> 
	[ 회원 상세 기록 추가 + 해당 회원 목표에 관한 진행상황 내역이 있다면 업데이트 ] <br> 
	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/8d168d21-7d40-4d49-aaf1-eb53a90d49b4", height=130><br> 
	회원 인바디 측정 결과 등록 전 회원 상세 테이블<br> 
	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/0c5a290f-8be3-4dae-9975-22768f9021ec", height=130><br>
	회원 인바디 측정 결과 등록 전 진행상황 테이블 <br>
	<br> 
	<pre><code>
	call 회원_인바디_정보_입력('tteia', 168, 50, 17.71, 24.03, 18.01, 1450); 
	</code></pre>
	닉네임 tteia 회원의 인바디 측정 결과 등록<br>
	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/86ab006d-7b0f-4db9-8d12-8804eaf2291e", height=130><br>
	측정 결과가 회원 상세 테이블에 추가됨<br>
	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/f267ab88-9e27-4875-b631-905729f040fe", height=130><br> 
	등록된 인바디 측정 결과를 토대로 진행상황 테이블의 남은 목표 갱신<br> 
	<br> 
	[ 회원 상세 기록 추가 + 진행상황 업데이트 + 상태 변경 ]<br> 
	<pre><code>
	call 회원_인바디_정보_입력('tteia', 168, 50, 17.71, 25.03, 17.01, 1470); 
	</code></pre>
 	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/d83982ad-1180-46fe-b1ca-aed674904385", height=130><br>
	user_id=3 회원이 목표를 달성해서 남은 목표가 없음 확인<br>
	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/586d9cb0-e9ba-42ac-aef5-8d1784ca4e65", height=130><br> 
	user_id=3 회원의 목표 상태 '진행중' > '완료'로 업데이트<br> 
	<br> 
 	[ 회원 상세 기록 추가 + 해당 회원 목표에 관한 진행상황 내역이 없다면 추가 ]<br> 
	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/82631599-aada-4f72-ba5f-f7e0afa9d7a7", height=130><br> 
	user_id=2 회원이 '근육량증가'라는 새로운 목표 등록<br> 
	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/a1d911af-722f-4067-933c-15f4141b0bb2", height=150><br> 
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
	🔶 회원 상세 조회 프로시저<br> 
	<pre><code>
	call 회원_상세_조회('yeji');  
	</code></pre> 
	회원의 닉네임을 입력 받으면<br>
	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/2df8767c-98e7-4ffd-980b-3b07c75ad1bc", height=110, width=800><br> 
	해당 회원의 인바디 측정 결과 조회  
</details> 
<details>
  <summary>프로필 테이블 프로시저</summary>
	<br>
	🔶 프로필 수정 프로시저<br> 
	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/b42cb44b-f392-414c-bc1b-0a1565f27479", height=130><br> 
	<pre><code>
	call db_project.프로필업데이트('dding2', 'updatecheck', 'fingersport', '중'); 
	</code></pre> 
	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/074b9140-d68f-4c23-b02f-eaadb04f929a", height=130><br> 
	입력 받은 회원의 프로필 내용 수정 
</details> 
<details>
  <summary>목표 테이블 프로시저</summary>
  <br>
  🔶 새로운 목표 추가 프로시저<br> 
  <pre><code>
  CALL setGoal('yeji', '근육량증가', '2024-10-10', 24.02); 
  </code></pre>
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/ecfd7413-e964-4c85-8dae-273b19f6d5ce", height=150><br> 
  user_id=2 회원의 새로운 목표 추가 (근육량증가)<br>
  <br> 
  🔶 기존 목표 수정 프로시저<br> 
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/f06414ac-7f35-48b6-9cfc-4b3f7cc82a1e", height=150><br> 
  <pre><code>
  CALL goalEdit('qkdrmawll', '체중감량', '2024-09-28', '44'); 
  </code></pre> 
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/2a39cb85-c6e8-4b29-8b70-0c910e22fbae", height=150><br> 
  user_id=1 회원의 목표를 근육량증가 > 체중감량으로 변경<br> 
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/d354fccb-36df-4dca-87ff-9d0806064413", height=150><br> 
  수정된 목표에 맞는 진행상황 내역 업데이트 (목표까지 남은 근육량 > 남은 체중) 
</details>
<details> 
  <summary>운동 기록 테이블 프로시저</summary>
  <br> 
  🔶 운동 기록 추가 프로시저<br> 
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/ad89a49d-384a-4246-840b-b7a1fa3c59de", height=150><br> 
  운동기록 삽입 전 테이블 <br> 
  <pre><code>
  call 운동기록_등록('yeji', 213, '2024-05-31 11:11', '2024-05-31 12:13'); 
  </code></pre>
  운동 기록 입력 받으면 <br> 
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/e23c7cbb-6fc5-4362-ae58-7681c529c370", height=150><br>
  새로운 운동 기록 추가 
</details> 
<details>
  <summary>진행 상황 테이블 프로시저</summary>
	<br>
	🔶 진행상황 조회 프로시저<br> 
  	<pre><code>
	call 진행상황_조회('tteia'); 
	</code></pre>
  	닉네임 tteia 회원의 진행상황 조회<br> 
  	<img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/71df5b66-d221-402e-851a-aaceffb120f9", height=130><br> 
</details> 
<details> 
  <summary>영양 관리 테이블 프로시저</summary>
  <br> 
  🔶 영양 섭취 추가 프로시저<br>  
  <pre><code>
  call db_project.영양관리시스템('yeji', '2024-06-02', '아침', 280, 30, 29, 547);  
  </code></pre>
  섭취한 영양 기록 입력 받으면<br>
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/9497159c-8875-4b30-8cc4-3156d06238ab", height=250><br> 
  테이블에 기록 추가<br>
  <br> 
  🔶 일일 섭취량 조회 프로시저<br>  
  <pre><code>
  call 사용자의당일섭취량('yeji');  
  </code></pre>
  닉네임을 입력 받으면<br> 
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/11dcacdf-9f65-49d4-8aae-bf40b1149096", height=100><br> 
  CURDATE()를 활용해서 당일 기준 사용자가 섭취한 탄수화물, 단백질, 지방, 일일 섭취 칼로리를 합하여 제공
</details>
<details>
  <summary>친구 테이블 프로시저</summary>
  <br> 
  🔶 친구 목록 추가<br> 
  <pre><code>
  CALL add_friends('yeji','dding2');
  </code></pre>
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/3d43ac13-4ee3-43c4-aecf-c96e62e17b25"><br>
  user_id=2인 yeji와 user_id=4인 dding2가 친구 목록에 추가 (친구 맺음) 
  <br>
  <br> 
  🔶 친구 목표 조회 프로시저<br>
  <pre><code>
  CALL viewFriendsGoal('yeji','dding2'); 
  </code></pre>
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/85f0ef2e-1eff-4b1b-af07-9a2f6bbfdc23", height=120><br> 
  입력받은 두 회원이 친구일 경우 -> 친구의 목표 조회 가능<br>
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/17ea63f9-e58e-4110-bc3f-2e55cdf95a23", height=120><br> 
  입력받은 두 회원이 친구가 아닐 경우 -> 친구의 목표 조회 불가능<br> 
  <br>
  <br> 
  🔶 친구 진행 상황 조회 프로시저<br>
  <pre><code>
  CALL viewFriendsProgress('yeji','dding2');
  </code></pre>
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/f35b75c1-4552-47eb-96da-64e3bf45e602", height=130><br>  
  내 닉네임과 친구의 닉네임을 입력하면 친구의 진행 상황 조회 가능 
</details> 
<details>
  <summary>게시글 테이블 프로시저</summary>
  <br> 
  🔶 게시글 등록 프로시저<br> 
  <pre><code>
  CALL write_post('qkdrmawll', 'hi', 'hello'); 
  </code></pre>
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/8e03eea7-c2e6-4de7-b1ce-5b69fa11c7b5"><br> 
  id=17 게시글 등록 
  <br>
  <br> 
  🔶 게시글 수정 프로시저<br> 
  <pre><code>
  CALL update_post (17, 'new title', 'new contents'); 
  </code></pre>
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/38e5fa9b-e966-4655-bcd8-e913e44edbc0"><br> 
  id=17인 게시물의 제목과 내용 수정 
  <br>
  <br>
  🔶 게시글 작성자로 조회 프로시저<br> 
  <pre><code>
  CALL search_by_author ('qkdrmawll');
  </code></pre>
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/f504ebf5-649e-4657-9d6b-c59968907e01"><br> 
  닉네임으로 해당 회원의 게시글 조회 
  <br>
  <br>
  🔶 게시글 제목으로 조회 프로시저<br> 
  <pre><code>
  CALL search_by_title ('h'); 
  </code></pre>
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/3b002d4f-7e28-44d1-9ce1-fc37a3f29e85"><br> 
  입력받은 내용이 제목으로 들어간 게시글 조회  
</details> 
<details>
  <summary>댓글 테이블 프로시저</summary>
  <br> 
  🔶 댓글 작성 프로시저<br> 
  <pre><code>
  CALL write_reply('qkdrmawll', 1, 'This is a reply.'); 
  </code></pre>
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/3f29d0e2-961c-48f5-abb7-fd961110482d"><br>
  댓글 추가 
  <br>
  <br>
  🔶 댓글 조회 프로시저<br> 
  <pre><code>
  CALL view_replies(2); 
  </code></pre>
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/380096ba-6f06-4045-aba3-cf206981d169", height=150><br> 
  post_id=2인 게시물에 달린 댓글 모두 조회 
  <br>
  <br>
  🔶 댓글 수정 프로시저<br>
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/831e8c22-3f08-4f22-903f-b54f29c6f7ef", height=210><br>
  수정 전 댓글 목록<br> 
  <pre><code>
  CALL edit_reply(21, 'new reply');
  </code></pre>
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/88f3c171-66c5-4d8a-907d-b91811c80054", height=210><br> 
  id=21인 댓글의 내용 변경 
</details> 
<details>
  <summary>쪽지 테이블 프로시저</summary>
  <br> 
  🔶 쪽지 발송 프로시저<br>
  <pre><code>
  CALL sendMessage("qkdrmawll", "tteia", "what's your favorite fruits?"); 
  </code></pre>
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/5857b7bb-ff71-4227-87ae-3f95fa8e9364"><br>
  1번 회원이 3번 회원에게 쪽지 발송 
  <br>
  <br>
  🔶 수신 조회 프로시저<br> 
  <pre><code>
  CALL messageBox("tteia"); 
  </code></pre>
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/5e0145d9-8068-4c8d-8dea-637c99001417"><br>
  receiver=3의 수신 쪽지 모두 조회 
  <br>
  <br>
  🔶 발신 조회 프로시저<br>
  <pre><code>
  CALL sendBox("qkdrmawll"); 
  </code></pre>
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/ad72a2d3-2b67-4c32-8d90-b1c7f1c1c471"><br>
  sender=1의 발신 쪽지 모두 조회 
</details> 
<details> 
  <summary>디바이스 테이블 프로시저</summary>
  <br> 
  🔶 디바이스 등록 프로시저<br>
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/767cbe35-e16d-450b-95c0-f92d25046252"><br>
  <pre><code>
  CALL deviceRegist('qkdrmawll', 'myWatch', 'AW4432');
  </code></pre>
  <img src="https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/cac4584d-fb97-4bad-ac12-43a651d4a111"><br>
  id=4 기기 등록 
</details> 
<br>
<br> 
