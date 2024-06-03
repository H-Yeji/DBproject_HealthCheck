-- 프로필 정보 수정
DELIMITER //
CREATE PROCEDURE 프로필업데이트 (
    IN 닉네임 VARCHAR(255),
    IN 자기소개 VARCHAR(1000),
    IN 선호운동 VARCHAR(100),
    IN 운동수준 ENUM('상', '중', '하')
)
BEGIN
    DECLARE p_user_id INT;
    SELECT id INTO p_user_id FROM users WHERE nickname = 닉네임 LIMIT 1;
    IF p_user_id IS NOT NULL THEN
        UPDATE profile
        SET intro = 자기소개, fav_exercise = 선호운동, level = 운동수준
        WHERE user_id = p_user_id;
        SELECT * FROM profile;
    ELSE
        SELECT CONCAT(닉네임, ' 사용자는 없습니다') AS message;
    END IF;
END //
DELIMITER ;
