# CS6.302 — Software Systems Development  
## Lab 2: SQL Stored Procedures and Cursors

### 📌 Overview
This repository contains solutions for **Lab 2** of the CS6.302 Software Systems Development course.  
The lab involves writing stored procedures in MySQL using **cursors** and **conditional logic**.

### 📂 Repository Contents
- `q0_setup.sql` → Creates database `streaming_lab2`, tables (`Shows`, `Subscribers`, `WatchHistory`), and inserts sample data.
- `q1.sql` → Procedure `ListAllSubscribers()`
- `q2.sql` → Procedure `GetWatchHistoryBySubscriber(IN sub_id INT)`
- `q3.sql` → Procedure `AddSubscriberIfNotExists(IN subName VARCHAR(100))`
- `q4.sql` → Procedure `SendWatchTimeReport()`
- `q5.sql` → Procedure `PrintAllWatchHistories()`
- `README.TXT` → Detailed execution instructions and submission guide

---

### 🚀 How to Run
Please **refer to the `README.TXT` file** in this repository for step-by-step instructions on:
- Setting up the database
- Executing each script
- Testing stored procedures
- Packaging and submission details

---

### ⚙️ Requirements
- MySQL Server 8.x
- MySQL Workbench

---
