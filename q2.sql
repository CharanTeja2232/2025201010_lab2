USE lab2;
DELIMITER $$
DROP PROCEDURE IF EXISTS GetWatchHistoryBySubscriber $$
CREATE PROCEDURE GetWatchHistoryBySubscriber(IN sub_id INT)
BEGIN
    SELECT s.Title, wh.WatchTime
    FROM WatchHistory AS wh
    INNER JOIN Shows AS s ON s.ShowID = wh.ShowID
    WHERE wh.SubscriberID = sub_id
    ORDER BY s.Title;
END $$
DELIMITER ;

