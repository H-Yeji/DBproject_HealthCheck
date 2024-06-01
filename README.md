# Health Check🎾
![image](https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/38fb1ecf-d0dd-4492-be0a-eb60d4c87e75)
<br>
<br>
<br>

### 😄 팀원 소개
<table>  
  <tbody>
    <tr>
      <td align="center"><a href="https://github.com/qkdrmawll"><img src="" width="100px;" alt=""/><br /><sub><b>팀장 : 방은지 </b></sub></a><br /></td>
      <td align="center"><a href="https://github.com/tteia"><img src="" width="100px;" alt=""/><br /><sub><b>팀원 : 최아영 </b></sub></a><br /></td>
      <td align="center"><a href="https://github.com/H-Yeji"><img src="" width="100px;" alt=""/><br /><sub><b>팀원 : 홍예지 </b></sub></a><br /></td>
      <td align="center"><a href="https://github.com/leem5514"><img src="" width="100px;" alt=""/><br /><sub><b>팀원 : 이명규 </b></sub></a><br /></td>
    </tr>
  </tbody>
</table>
<br>


### 💡 프로젝트 개요 
<pre><code>
	
</code></pre>
<br>


### 💡 프로젝트 필요성 
<br>
<br>


### 📌 기술 스택
<img src="https://img.shields.io/badge/mariaDB-003545?style=for-the-badge&logo=mariaDB&logoColor=white">&nbsp;&nbsp;<img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white">&nbsp;&nbsp;<img src="https://img.shields.io/badge/git-F05032?style=for-the-badge&logo=git&logoColor=white"> 
<br>
<br> 
<br>

### 📅 WBS (Work Breakdown Structure)
[[WBS 바로가기]](https://docs.google.com/spreadsheets/d/1kbN5XonKJiKncqxmrI0m85HVIuabvkAwmK7VqzdzByo/edit#gid=0)
![image](https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/ae703dfe-38a7-4ac6-96e3-74ffb63086b3)
-> 수정하고 재업로드 해야함  
<br>
<br>

### 📝 요구사항 명세서 
[[요구사항 명세서 바로가기]](https://docs.google.com/spreadsheets/d/1kbN5XonKJiKncqxmrI0m85HVIuabvkAwmK7VqzdzByo/edit?usp=sharing)
<br>
<br>
<br>

### 🎨 ERD
![image](https://github.com/beyond-sw-camp/be07_1st_3team_healthcheck/assets/87412123/c5932e45-79de-4592-a872-a6a4ae8edefb)
<br>
<br>
<br>

### 💻 SQL[테이블]
<details>
  <summary>회원 테이블</summary>
  <pre><code>
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
  </code></pre>
</details>  
<details> 
  <summary>❓회원 상세 테이블</summary>
  <pre><code>
    CREATE TABLE user_detail (
	    id INT AUTO_INCREMENT, 
			user_id INT NOT NULL,
    	height DECIMAL(10, 2) NOT NULL,
    	weight DECIMAL(10, 2) NOT NULL,
		  bmi DECIMAL(10, 2),
    	skeletal_muscle_mass DECIMAL(10, 2)NOT NULL, 
	   	body_fat_percentage DECIMAL(10, 2),
    	created_time DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    	delYN ENUM('Y', 'N') DEFAULT 'N',
    	bmr INT, 
    	primary key(id),
    	FOREIGN KEY (user_id) REFERENCES users(id)
  );
  </code></pre>
</details> 
<details>
  <summary>프로필 테이블</summary>
  <pre><code>
  CREATE TABLE profile (
    id INT AUTO_INCREMENT, 
    user_id INT NOT NULL,
    intro VARCHAR(1000),
    fav_exercise VARCHAR(100),
    level ENUM('상', '중', '하'),
    delYN ENUM('Y', 'N') DEFAULT 'N',
    primary key(id), 
    FOREIGN KEY (user_id) REFERENCES users(id)
  );
  </code></pre>
</details> 
<details>
  <summary>목표 테이블</summary>
  <pre><code>
  CREATE TABLE goal (
    	id INT AUTO_INCREMENT,
    	user_id INT,
    	goal ENUM('체중감량', '근육량증가') NOT NULL,
    	target_date date NOT NULL,
    	target_kg DECIMAL(10, 2) NOT NULL,
    	status enum('진행중', '완료') default '진행중',
    	delYN ENUM('Y', 'N') DEFAULT 'N',
    	primary key(id), 
    	FOREIGN KEY (user_id) REFERENCES users(id)
  );
  </code></pre>
</details>
<details> 
  <summary>❓운동 기록 테이블</summary>
  <pre><code>
  CREATE TABLE exercise_record (
    	id INT AUTO_INCREMENT, 
    	user_id INT NOT NULL,
      calories_burned DECIMAL(10, 2),
    	start_time DATETIME,
    	end_time DATETIME, 
    	primary key(id),
    	FOREIGN KEY (user_id) REFERENCES users(id)
  );
  </code></pre>
</details> 
<details>
  <summary>진행 상황 테이블</summary>
  <pre><code>
  CREATE TABLE progress (
    id INT AUTO_INCREMENT, 
    user_id INT NOT NULL,
    goal_id INT NOT NULL,
    currentTime date default current_date,
    remain_kg DECIMAL(10, 2) NOT NULL, 
    delYN ENUM('Y', 'N') DEFAULT 'N',
    primary key(id), 
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (goal_id) REFERENCES goal(ID)
  );
  </code></pre>
</details>
<details> 
  <summary>❓영양 관리 테이블</summary>
  <pre><code>
    CREATE TABLE nutritional_management (
      id INT AUTO_INCREMENT, 
		  user_id INT NOT NULL,
    	intake_time ENUM('아침','점심','저녁','간식'),
    	intake_date DATE DEFAULT CURRENT_DATE,
    	car_kcal INT,
    	pro_kcal INT,
    	fat_kcal INT,
    	total_kcal INT,
    	delYN ENUM('Y', 'N') DEFAULT 'N',
    	primary key(id),
    	FOREIGN KEY (user_id) REFERENCES users(id)
  );
  </code></pre>
</details>
<details>
  <summary>친구 테이블</summary>
  <pre><code>
    CREATE TABLE friend (
	    id int auto_increment,
	    user_id1 int NOT NULL,
	    user_id2 int NOT NULL,
	    created_time DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	    delYN ENUM('Y', 'N') DEFAULT 'N',
	    primary key(id),
	    FOREIGN KEY (user_id1) REFERENCES users(id),
	    FOREIGN KEY (user_id2) REFERENCES users(id)
  );
  </code></pre>
</details> 
<details>
  <summary>게시글 테이블</summary>
  <pre><code>
    CREATE TABLE post (
	    id int auto_increment,
	    user_id int NOT NULL,
	    title varchar(255) NOT NULL,
	    contents varchar(3000),
	    created_time DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	    hits int NOT NULL	DEFAULT 1,
	    delYN ENUM('Y', 'N') DEFAULT 'N',
	    primary key(id),
	    FOREIGN KEY (user_id) REFERENCES users(id)
  ); 
  </code></pre>
</details> 
<details>
  <summary>댓글 테이블</summary>
  <pre><code>
    CREATE TABLE reply (
	    id int auto_increment,
	    user_id int NOT NULL,
	    post_id int NOT NULL,
	    contents varchar(255) NOT NULL,
	    created_time DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL, 
	    delYN ENUM('Y', 'N') DEFAULT 'N',
	    primary key(id),
	    FOREIGN KEY (user_id) REFERENCES users(id),
	    FOREIGN KEY (post_id) REFERENCES post(id)
  );
  </code></pre>
</details> 
<details>
  <summary>쪽지 테이블</summary>
  <pre><code>
    CREATE TABLE message (
	    id int auto_increment,
	    sender int NOT NULL,
	    receiver int NOT NULL,
	    texts varchar(1000)	NOT NULL,
	    created_time DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL, 
	    delYN ENUM('Y', 'N') DEFAULT 'N',
	    primary key(id),
	    FOREIGN KEY (sender) REFERENCES users(id),
	    FOREIGN KEY (receiver) REFERENCES users(id)
  );
  </code></pre>
</details> 
<details>
  <summary>디바이스 테이블</summary>
  <pre><code>
    CREATE TABLE device (
	    id int auto_increment,
	    user_id int NOT NULL,
	    devices_alias varchar(255) NOT NULL UNIQUE,
	    serial_number varchar(255) NOT NULL UNIQUE,
	    created_time DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL, 
	    delYN ENUM('Y', 'N') DEFAULT 'N',
	    primary key(id),
	    FOREIGN KEY (user_id) REFERENCES users(id)
  ); 
  </code></pre>
</details> 
