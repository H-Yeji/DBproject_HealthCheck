-- 기기 등록
DELIMITER //
CREATE PROCEDURE deviceRegist(in userFind VARCHAR(255), in deviceAlias VARCHAR(255), in serialNumber VARCHAR(255))
BEGIN  
	DECLARE userId int;
	SELECT id into userId from users where nickname = userFind;
	INSERT INTO device(user_id, devices_alias, serial_number)
    VALUES (userId, deviceAlias, serialNumber);
END
// DELIMITER ;
