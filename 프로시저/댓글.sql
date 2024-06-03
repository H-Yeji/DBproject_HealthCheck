-- 댓글 작성
DELIMITER //
CREATE PROCEDURE write_reply (
    IN user_nickname VARCHAR(255),
    IN post_id INT,
    IN reply_contents VARCHAR(255)
)
BEGIN
    DECLARE userId INT;
    SELECT id INTO userId 
    FROM users 
    WHERE nickname = user_nickname;
    
    -- Insert the reply into the reply table
    INSERT INTO reply (user_id, post_id, contents)
    VALUES (userId, post_id, reply_contents);
END //
DELIMITER ;


-- 댓글 조회
DELIMITER //
CREATE PROCEDURE view_replies (IN post_id INT)
BEGIN
    SELECT r.id,ru.nickname,r.contents ,r.created_time FROM reply r INNER JOIN users ru ON r.user_id = ru.id WHERE r.post_id = post_id;
END //
DELIMITER ;


-- 댓글 수정
DELIMITER //
CREATE PROCEDURE edit_reply ( IN reply_id INT, IN new_reply_contents VARCHAR(255))
BEGIN
    UPDATE reply SET contents = new_reply_contents WHERE id = reply_id;
END //
DELIMITER ;

