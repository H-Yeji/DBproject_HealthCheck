-- 친구 추가
DELIMITER //
CREATE PROCEDURE add_friends (in nickname1 varchar(255), in nickname2 varchar(255))
BEGIN
DECLARE userId1 INT;
DECLARE userId2 INT;
SELECT id into userId1 from users where nickname = nickname1;
SELECT id into userId2 from users where nickname = nickname2;
INSERT INTO friend (user_id1,user_id2) values (userId1, userId2);

END //
DELIMITER  ;


-- 친구 목표 조회
DELIMITER //
CREATE PROCEDURE 친구_목표_조회 (
    IN my_nickname VARCHAR(255),
    IN friend_nickname VARCHAR(255))
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


-- 친구 진행상황 조회
DELIMITER //
CREATE PROCEDURE viewFriendsGoal (
    IN my_nickname VARCHAR(255),
    IN friend_nickname VARCHAR(255))
BEGIN
    DECLARE my_id INT;
    DECLARE friend_id INT;
    
    SELECT id INTO my_id FROM users WHERE nickname = my_nickname;
    SELECT id INTO friend_id FROM users WHERE nickname = friend_nickname;

    IF EXISTS (SELECT 1 FROM friend WHERE user_id1 = my_id AND user_id2 = friend_id) THEN
    	SELECT u.nickname, p.remain_kg FROM progress p  inner join users u on u.id = p.user_id WHERE user_id = friend_id;
    ELSEIF (SELECT 1 FROM friend WHERE user_id1 = friend_id AND user_id2 = my_id) THEN
    	SELECT u.nickname, p.remain_kg FROM progress p  inner join users u on u.id = p.user_id WHERE user_id = friend_id;
    ELSE
        SELECT 'Not friends' AS Message;
    END IF;
END //
DELIMITER ;
