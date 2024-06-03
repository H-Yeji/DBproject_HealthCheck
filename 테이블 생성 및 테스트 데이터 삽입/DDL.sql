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

CREATE TABLE exercise_record (
    	id INT AUTO_INCREMENT, 
    	user_id INT NOT NULL,
			calories_burned DECIMAL(10, 2),
    	start_time DATETIME,
    	end_time DATETIME, 
    	primary key(id),
    	FOREIGN KEY (user_id) REFERENCES users(id)
);

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

CREATE TABLE friend (
	id	int	auto_increment,
	user_id1 int	NOT NULL,
	user_id2 int	NOT NULL,
	created_time DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	delYN ENUM('Y', 'N') DEFAULT 'N',
	primary key(id),
	FOREIGN KEY (user_id1) REFERENCES users(id),
	FOREIGN KEY (user_id2) REFERENCES users(id)
);

CREATE TABLE post (
	id	int auto_increment,
	user_id	int	NOT NULL,
	title	varchar(255)	NOT NULL,
	contents varchar(3000),
	created_time DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
	hits int	NOT NULL	DEFAULT 1,
	delYN ENUM('Y', 'N') DEFAULT 'N',
	primary key(id),
	FOREIGN KEY (user_id) REFERENCES users(id)
); 

CREATE TABLE reply (
	id int	auto_increment,
	user_id	int	NOT NULL,
	post_id	int	NOT NULL,
	contents varchar(255)	NOT NULL,
	created_time DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL, 
	delYN ENUM('Y', 'N') DEFAULT 'N',
	primary key(id),
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (post_id) REFERENCES post(id)
);

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
