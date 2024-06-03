-- 쪽지 발송
DELIMITER //
CREATE PROCEDURE sendMessage(in nickname1 VARCHAR(255), in nickname2 VARCHAR(255), in contents VARCHAR(255))
BEGIN  
	DECLARE user1Id int;
	DECLARE user2Id int;
	SELECT id into user1Id from users where nickname = nickname1;
	SELECT id into user2Id from users where nickname = nickname2;
	INSERT INTO message(sender, receiver, texts)
    VALUES (user1Id, user2Id, contents);
END
// DELIMITER ;


-- 수신 쪽지 조회
DELIMITER //
CREATE PROCEDURE messageBox(in userFind VARCHAR(255))
BEGIN  
	DECLARE userId int;
	SELECT id INTO userId FROM users WHERE nickname = userFind;
	SELECT * FROM message WHERE receiver = userId;
END
// DELIMITER ;


-- 발신 쪽지 조회
DELIMITER //
CREATE PROCEDURE sendBox(in userFind VARCHAR(255))
BEGIN  
	DECLARE userId int;
	SELECT id INTO userId FROM users WHERE nickname = userFind;
	SELECT * FROM message WHERE sender = userId;
END
// DELIMITER ;
