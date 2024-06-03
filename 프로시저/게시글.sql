-- 게시글 등록
DELIMITER //
CREATE PROCEDURE write_post (in nickname1 varchar(255), in title varchar(255), in contents varchar(3000))
BEGIN
DECLARE userId INT;
SELECT id into userId from users where nickname = nickname1;
INSERT INTO post (user_id ,title, contents) values (userId, title, contents);

END //
DELIMITER  ;


-- 게시글 수정
DELIMITER //
CREATE PROCEDURE update_post (IN post_id INT, IN new_title VARCHAR(255), IN new_contents VARCHAR(3000))
BEGIN
    UPDATE post SET title = new_title, contents = new_contents WHERE id = post_id;
END //
DELIMITER ;


-- 게시글 작성자로 검색
DELIMITER //
CREATE PROCEDURE search_by_author (IN author_nickname VARCHAR(255))
BEGIN
    SELECT * FROM post p inner join users u on p.user_id = u.id WHERE u.nickname = author_nickname;
END //
DELIMITER ;


-- 게시글 제목으로 검색
DELIMITER //
CREATE PROCEDURE search_by_title (IN post_title VARCHAR(255))
BEGIN
    SELECT p.id, u.nickname, p.title, p.contents, p.created_time FROM post p inner join users u on p.user_id = u.id WHERE p.title LIKE CONCAT('%', post_title, '%');
END //
DELIMITER ;
