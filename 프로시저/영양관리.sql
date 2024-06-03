-- 영양관리 생성
DELIMITER //
CREATE PROCEDURE 영양관리시스템( IN 닉네임 VARCHAR(255), IN 섭취일 DATE,
    IN 섭취시간 ENUM('아침','점심','저녁','간식'), IN 탄수화물흡수량 INT,
    IN 단백질흡수량 INT, IN 지방흡수량 INT, IN 총칼로리섭취량 INT
)
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

-- 일일 섭취량 조회
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
