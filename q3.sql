USE lab2;
DELIMITER $$
DROP PROCEDURE IF EXISTS AddSubscriberIfNotExists $$
CREATE PROCEDURE AddSubscriberIfNotExists(IN subName VARCHAR(100))
BEGIN
    DECLARE cnt INT DEFAULT 0;
    DECLARE new_id INT;

    -- Check if subscriber already exists
    SELECT COUNT(*) INTO cnt 
    FROM Subscribers 
    WHERE SubscriberName = subName;

    IF cnt = 0 THEN
        -- Compute next ID in a separate SELECT (not inside INSERT)
        SELECT COALESCE(MAX(SubscriberID), 0) + 1 
        INTO new_id
        FROM Subscribers;

        -- Use variable in INSERT (no subquery here)
        INSERT INTO Subscribers(SubscriberID, SubscriberName, SubscriptionDate)
        VALUES (new_id, subName, CURDATE());

        SELECT 'Subscriber added' AS Message, subName AS SubscriberName;
    ELSE
        SELECT 'Subscriber already exists' AS Message, subName AS SubscriberName;
    END IF;
END $$
DELIMITER ;


CALL AddSubscriberIfNotExists('C');
