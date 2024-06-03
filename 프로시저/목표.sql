-- 목표등록
DELIMITER //
CREATE PROCEDURE setGoal(in userFind VARCHAR(255), in goalType VARCHAR(255), in dDay VARCHAR(255), in setTarget DECIMAL(10,2))
BEGIN  
	DECLARE userId int;
	SELECT id into userId from users where nickname = userFind;
	INSERT INTO goal(user_id, goal, target_date, target_kg)
    VALUES (userId, goalType, dDay, setTarget);
END
// DELIMITER ;


-- 목표수정
DELIMITER //
CREATE PROCEDURE goalEdit(
    IN userFind VARCHAR(255),
    IN newGoal VARCHAR(255),
    IN newDate DATE,
    IN newTarget DECIMAL(10,2)
)
BEGIN
    DECLARE userId INT;
    DECLARE goalId INT;
    DECLARE currentWeight DECIMAL(10,2);
    DECLARE currentMuscleWeight DECIMAL(10,2);
    DECLARE newStatus VARCHAR(255);

    SELECT id INTO userId FROM users WHERE nickname = userFind;
    
    SELECT id INTO goalId FROM goal WHERE user_id = userId AND goal = newGoal;

    SELECT weight, skeletal_muscle_mass INTO currentWeight, currentMuscleWeight FROM user_detail WHERE user_id = userId;

    IF newGoal = '체중감량' THEN
        IF EXISTS (SELECT 1 FROM progress WHERE goal_id = goalId) THEN
            UPDATE progress 
            SET remain_kg = currentWeight - newTarget 
            WHERE goal_id = goalId;
        ELSE
            INSERT INTO progress(user_id, goal_id, remain_kg) 
            VALUES(userId, goalId, currentWeight - newTarget);
        END IF;
    ELSEIF newGoal = '근육량증가' THEN
        IF EXISTS (SELECT 1 FROM progress WHERE goal_id = goalId) THEN
            UPDATE progress 
            SET remain_kg = newTarget - currentMuscleWeight 
            WHERE goal_id = goalId;
        ELSE
            INSERT INTO progress(user_id, goal_id, remain_kg) 
            VALUES(userId, goalId, newTarget - currentMuscleWeight);
        END IF;
    END IF;

    IF (SELECT remain_kg FROM progress WHERE goal_id = goalId) <= 0 THEN
        SET newStatus = '완료';
    ELSE
        SET newStatus = '진행중';
    END IF;

    UPDATE goal 
    SET goal = newGoal, target_date = newDate, target_kg = newTarget, status = newStatus 
    WHERE id = goalId;
END
// 
DELIMITER ;

