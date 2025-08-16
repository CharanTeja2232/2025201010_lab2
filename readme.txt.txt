README.TXT — CS6.302 Software System Development — Lab 2
--------------------------------------------------------
--------------------------------------------------------
STEPS TO EXECUTE THE SCRIPTS
--------------------------------------------------------
1. Open MySQL Workbench and connect to your local server.

2. Create Database lab2 
   - This creates database `lab2`.

3. USE lab2
   - this uses the database lab2

4.Create tables and insert values according to activity.pdf 



5. Run the following scripts :
   - q1.sql : Creates procedure ListAllSubscribers()
   - q2.sql : Creates procedure GetWatchHistoryBySubscriber(IN sub_id INT)
   - q3.sql : Creates procedure AddSubscriberIfNotExists(IN subName VARCHAR(100))
   - q4.sql : Creates procedure SendWatchTimeReport()
   - q5.sql : Creates procedure PrintAllWatchHistories()

6. Test the procedures with sample calls:
   - CALL ListAllSubscribers();
   - CALL GetWatchHistoryBySubscriber(1);
   - CALL AddSubscriberIfNotExists('New User');
   - CALL SendWatchTimeReport();
   - CALL PrintAllWatchHistories();

--------------------------------------------------------
GIT REPOSITORY LINK
--------------------------------------------------------
Paste your repository link here:

https://github.com/CharanTeja2232/2025201010_lab2