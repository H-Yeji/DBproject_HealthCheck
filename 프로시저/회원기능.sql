-- 회원 가입
DELIMITER //
CREATE PROCEDURE signUp(in nickname VARCHAR(255), in name VARCHAR(255), in email VARCHAR(255), in password VARCHAR(255), in phoneNumber VARCHAR(255), in age INT, in sex VARCHAR(255))
BEGIN  
	INSERT INTO users(nickname, name, email, password, phone_number, age, sex)
  VALUES (nickname, name, email, password, phoneNumber, age, sex);
END
// DELIMITER ;

-- 회원정보 수정
DELIMITER //
CREATE PROCEDURE userEdit(in userFind VARCHAR(255), in newName VARCHAR(255), in newPassword VARCHAR(255), in newPhoneNumber VARCHAR(255), in newAge INT)
BEGIN
	DECLARE userId int;
	SELECT id into userId from users where nickname = userFind;
	UPDATE users SET name = newName, password = newPassword, phone_number = newPhoneNumber, age = newAge WHERE id = userId;
END
// DELIMITER ;

-- 회원 삭제
DELIMITER //
CREATE PROCEDURE userDelete(in outNickname VARCHAR(255), in outPassword VARCHAR(255))
BEGIN
	UPDATE users SET delYN = 'Y' WHERE nickname = outNickname AND password = outPassword;
END
// DELIMITER ;

CALL userDelete('suguri', '2341');


