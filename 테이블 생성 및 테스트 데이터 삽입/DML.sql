# Users 
INSERT INTO users(nickname, name, email, password, phone_number, age, sex)
VALUES('qkdrmawll', 'eunji','eunji8106@naver.com', '1234','010-6613-3528',24,'F');

INSERT INTO users(nickname, name, email, password, phone_number, age, sex)
VALUES('yeji', 'hongyeji', 'yeji@naver.com', '1234’, ‘010-6666-3333', 27, 'F');

INSERT INTO users(nickname, name, email, password, phone_number, age, sex)
VALUES('tteia', 'ayeong', 'tteia@gmail.com', 'hello1234', '010-1234-1234', 29, 'F');

INSERT INTO users(nickname, name, email, password, phone_number, age, sex)
VALUES('dding2', 'myeonggyu', 'leem5514@hanmail.net', '9876', '010-1234-5678', 30, 'M');

# User_detail 
INSERT INTO user_detail(user_id, height, weight, bmi, skeletal_muscle_mass, body_fat_percentage, bmr)
VALUES(1, 170, 50, 17.30, 21.05, 16.25, 1425); 

INSERT INTO user_detail(user_id, height, weight, bmi, skeletal_muscle_mass, body_fat_percentage, bmr)
VALUES(2, 165, 50, 18.36, 22.15, 17.25, 1400);

INSERT INTO user_detail(user_id, height, weight, bmi, skeletal_muscle_mass, body_fat_percentage, bmr)
VALUES(3, 168, 52, 18.42, 23.02, 18.03, 1434);

INSERT INTO user_detail(user_id, height, weight, bmi, skeletal_muscle_mass, body_fat_percentage, bmr)
VALUES(4, 188, 70, 19.80, 35.02, 10.55, 2222);


# Exercise_record 
INSERT INTO exercise_record(user_id, calories_burned, start_time, end_time)
VALUES(1, 150, '2024-5-19 11:59:25', '2024-5-19 12:49:25');

INSERT INTO exercise_record(user_id, calories_burned, start_time, end_time)
VALUES(2, 172, '2024-5-19 13:25:44', '2024-5-19 14:50:25');

INSERT INTO exercise_record(user_id, calories_burned, start_time, end_time)
VALUES(3, 255, '2024-5-19 20:47:44', '2024-5-19 21:50:25');

INSERT INTO exercise_record(user_id, calories_burned, start_time, end_time)
VALUES(1, 200, '2024-5-20 17:30:55', '2024-5-20 18:00:00');

INSERT INTO exercise_record(user_id, calories_burned, start_time, end_time)
VALUES(3, 223, '2024-5-20 07:30:33', '2024-5-20 08:25:11');

INSERT INTO exercise_record(user_id, calories_burned, start_time, end_time)
VALUES(4, 300, '2024-5-22 10:10:15', '2024-5-22 12:10:17');

# Friend
INSERT INTO friend(user_id1,user_id2) values(1,2);
INSERT INTO friend(user_id1,user_id2) values(2,3);
INSERT INTO friend(user_id1,user_id2) values(3,4);
INSERT INTO friend(user_id1,user_id2) values(1,4);

# Post
INSERT INTO post (user_id, title, contents)
VALUES 
(1,'hi i`m health chobo ','so hard'),
(2,'is there swim gosu?','yeah ~~~~~~~~'),
(3,'do you know gym near by here?','let`s go together !!! let`s be helchang'),
(2,'i`m yeji','nice to meet you !!!!!!!'),
(1, '10 Minute Morning Workout', 'Start your day with this quick and effective 10-minute workout routine. No equipment needed!'),
(2, 'Healthy Eating Tips', 'Learn how to balance your diet with these healthy eating tips from nutrition experts.'),
(3, 'Yoga for Beginners', 'A guide to get you started with yoga. Perfect for beginners!'),
(1, '5 Best Cardio Exercises', 'Here are the top 5 cardio exercises to boost your heart health and stamina.'),
(4, 'Strength Training Basics', 'An introduction to strength training. Learn the basics to build muscle effectively.'),
(2, 'Hydration and Exercise', 'Discover the importance of hydration and how it affects your workout performance.'),
(3, 'Home Gym Setup Guide', 'Tips and tricks to set up your own home gym without breaking the bank.'),
(4, 'Mental Health and Fitness', 'Understand the connection between physical exercise and mental well-being.'),
(1, 'Outdoor Running Tips', 'Maximize your outdoor running sessions with these expert tips.'),
(2, 'Recovery and Rest Days', 'Learn why recovery and rest days are crucial for your fitness journey.'),
(3, 'Fitness Myths Debunked', 'We debunk common fitness myths to help you stay on the right track.'),
(4, 'Tracking Your Progress', 'Effective methods to track your fitness progres');

# Reply
INSERT INTO reply (user_id,post_id,contents) 
VALUES (1, 2, 'Great workout routine! I tried it this morning and felt amazing.'),
(1, 3, 'I love short workouts like this. Thanks for sharing!'),
(2, 1, 'These tips are very helpful. I\'ll definitely incorporate them into my diet.'),
(2, 4, 'Thanks for the advice! Eating healthy has always been a challenge for me.'),
(3, 5, 'I just started yoga and this guide is perfect for beginners like me.'),
(3, 2, 'Yoga has really improved my flexibility and mental health.'),
(4, 3, 'Cardio exercises are a great way to stay fit. My favorite is cycling.'),
(4, 5, 'I prefer running, but I\'ll try some of these exercises too.'),
(1, 11, 'Strength training has completely transformed my body. Great article!'),
(2, 6, 'I\'m new to strength training. This guide is very informative.'),
(3, 7, 'The weekly challenge keeps me motivated. Thanks for organizing this!'),
(4, 7, 'I\'ve been participating in these challenges for months. Love them!'),
(1, 8, 'Hydration is so important. I noticed a big difference in my performance.'),
(2, 10, 'Staying hydrated is key. Thanks for the reminder!'),
(3, 4, 'Setting up a home gym was the best decision I made.'),
(3, 2, 'This guide helped me a lot in choosing the right equipment.'),
(3, 3, 'Exercise has really helped me manage stress and anxiety.'),
(4, 5, 'Mental health benefits of exercise are often overlooked. Great post!'),
(1, 13, 'I need to work on my flexibility. These exercises are very helpful.'),
(2, 4, 'I do these stretches every morning. They make a big difference.');

# Device
INSERT INTO device(user_id, devices_alias, serial_number)
VALUES(1, 'applewatch', 'AW2412');

INSERT INTO device(user_id, devices_alias, serial_number)
VALUES(4, 'galaxyfit', 'GF5910');

INSERT INTO device(user_id, devices_alias, serial_number)
VALUES(1, 'galaxywatch', 'GW4984');

# Message 
INSERT INTO message(sender, receiver, texts)
VALUES(2, 3, 'hello world');

INSERT INTO message(sender, receiver, texts)
VALUES(1, 4, 'hello world2');

INSERT INTO message(sender, receiver, texts)
VALUES(1, 2, 'do you have protein?');

INSERT INTO message(sender, receiver, texts)
VALUES(4, 1, 'lets go gym together');

# Profile
INSERT INTO profile(user_id, intro, fav_exercise, level)
VALUES (1, 'I AM EUNJI','Pilates' ,'상');

INSERT INTO profile(user_id, intro, fav_exercise, level)
VALUES (2, 'MY NAME YEJI','climbing ','중');

INSERT INTO profile(user_id, intro, fav_exercise, level)
VALUES (3, 'MY NAME IS TTEIA','swimming' ,'하');

INSERT INTO profile(user_id, intro, fav_exercise, level)
VALUES (4, 'MY NAME IS DDING','boxing' ,'하');

# Goal
INSERT INTO goal(user_id, goal, target_date, target_kg)
VALUES(1, '근육량증가', '2024-12-06', '21.06'),
(2, '체중감량', '2024-11-12', '45'),
(3, '근육량증가', '2025-02-14', '25.03'),
(3, '체중감량', '2025-02-10', '48'),
(4, '근육량증가', '2025-06-09', '37.98');

UPDATE goal SET target_kg = '21.06' where id = 1;

# nutritional_management
INSERT INTO nutritional_management(user_id, intake_time, car_kcal, pro_kcal, fat_kcal, total_kcal) 
VALUES (1, '아침', 400, 5, 15, 500);
INSERT INTO nutritional_management(user_id, intake_time, car_kcal, pro_kcal, fat_kcal, total_kcal)
VALUES (1, '저녁', 800, 15, 20, 1200);
INSERT INTO nutritional_management(user_id, intake_time, car_kcal, pro_kcal, fat_kcal, total_kcal)
VALUES (2, '점심', 500, 10, 20, 800);
INSERT INTO nutritional_management(user_id, intake_time, car_kcal, pro_kcal, fat_kcal, total_kcal)
VALUES (3, '아침', 300, 10, 10, 500);
INSERT INTO nutritional_management(user_id, intake_time, car_kcal, pro_kcal, fat_kcal, total_kcal)
VALUES (3, '저녁', 400, 20, 30, 500);
INSERT INTO nutritional_management(user_id, intake_time, car_kcal, pro_kcal, fat_kcal, total_kcal)
VALUES (4, '아침', 350, 15, 25, 450);
INSERT INTO nutritional_management(user_id, intake_time, car_kcal, pro_kcal, fat_kcal, total_kcal)
VALUES (4, '점심', 400, 20, 10, 500);
INSERT INTO nutritional_management(user_id, intake_time, car_kcal, pro_kcal, fat_kcal, total_kcal)
VALUES (4, '저녁', 500, 5, 15, 650);
INSERT INTO nutritional_management(user_id, intake_time,intake_date, car_kcal, pro_kcal, fat_kcal, total_kcal)
VALUES (3, '아침', '2024-05-15',500, 5, 5, 650);
INSERT INTO nutritional_management(user_id, intake_time,intake_date, car_kcal, pro_kcal, fat_kcal, total_kcal)
VALUES (3, '저녁', '2024-05-15',250, 5, 5, 650);
INSERT INTO nutritional_management(user_id, intake_time,intake_date, car_kcal, pro_kcal, fat_kcal, total_kcal)
VALUES (2, '점심','2024-05-18', 500, 5, 30, 650);
INSERT INTO nutritional_management(user_id, intake_time,intake_date, car_kcal, pro_kcal, fat_kcal, total_kcal)
VALUES (1, '점심','2024-05-20', 600, 10, 25, 650);
INSERT INTO nutritional_management(user_id, intake_time,intake_date, car_kcal, pro_kcal, fat_kcal, total_kcal)
VALUES (1, '저녁','2024-05-20', 400, 5, 15, 650);

# Progress  
INSERT INTO progress(user_id, goal_id, remain_kg)
VALUES(1, 1, 0.01);

INSERT INTO progress(user_id, goal_id, remain_kg)
VALUES(2, 2, 5.00);

INSERT INTO progress(user_id, goal_id, remain_kg)
VALUES(3, 3, 2.01);

INSERT INTO progress(user_id, goal_id, remain_kg)
VALUES(3, 4, 4.00);

INSERT INTO progress(user_id, goal_id, remain_kg)
VALUES(4, 5, 2.96);
