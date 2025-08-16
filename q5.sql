USE lab2;
DELIMITER $$
DROP PROCEDURE IF EXISTS PrintAllWatchHistories $$
CREATE PROCEDURE PrintAllWatchHistories()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE v_id INT;
    DECLARE v_name VARCHAR(100);

    DECLARE c_sub CURSOR FOR
        SELECT SubscriberID, SubscriberName FROM Subscribers ORDER BY SubscriberID;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN c_sub;
    read_loop: LOOP
        FETCH c_sub INTO v_id, v_name;
        IF done = 1 THEN
            LEAVE read_loop;
        END IF;

        -- Print subscriber header
        SELECT CONCAT('Subscriber: ', v_name, ' (ID ', v_id, ')') AS Header;

        IF EXISTS (SELECT 1 FROM WatchHistory WHERE SubscriberID = v_id) THEN
            CALL GetWatchHistoryBySubscriber(v_id);
        ELSE
            SELECT 'No watch history' AS Note;
        END IF;
    END LOOP;
    CLOSE c_sub;
END $$
DELIMITER ;

CALL PrintAllWatchHistories();