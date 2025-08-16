USE lab2;
DELIMITER $$
DROP PROCEDURE IF EXISTS SendWatchTimeReport $$
CREATE PROCEDURE SendWatchTimeReport()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE v_id INT;
    DECLARE c_sub CURSOR FOR
        SELECT SubscriberID FROM Subscribers ORDER BY SubscriberID;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN c_sub;
    read_loop: LOOP
        FETCH c_sub INTO v_id;
        IF done = 1 THEN
            LEAVE read_loop;
        END IF;

        IF EXISTS (SELECT 1 FROM WatchHistory WHERE SubscriberID = v_id) THEN
            CALL GetWatchHistoryBySubscriber(v_id);
        END IF;
    END LOOP;
    CLOSE c_sub;
END $$
DELIMITER ;

CALL SendWatchTimeReport();
