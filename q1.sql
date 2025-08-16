USE lab2;
DELIMITER $$
DROP PROCEDURE IF EXISTS ListAllSubscribers $$
CREATE PROCEDURE ListAllSubscribers()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE v_name VARCHAR(100);
    DECLARE c_sub CURSOR FOR
        SELECT SubscriberName FROM Subscribers ORDER BY SubscriberName;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN c_sub;
    read_loop: LOOP
        FETCH c_sub INTO v_name;
        IF done = 1 THEN
            LEAVE read_loop;
        END IF;
        SELECT v_name AS SubscriberName;
    END LOOP;
    CLOSE c_sub;
END $$
DELIMITER ;

call ListAllSubscribers()
