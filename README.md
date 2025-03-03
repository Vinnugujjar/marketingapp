# 📌 CRUD Application with Email Notification (Spring Boot, MySQL, REST API)

![Spring Boot](https://img.shields.io/badge/Spring%20Boot-2.7.2-green) ![MySQL](https://img.shields.io/badge/MySQL-8.0-blue) ![HTML5](https://img.shields.io/badge/HTML5-Frontend-orange)  

## **📝 Overview**  
This is a **CRUD (Create, Read, Update, Delete) web application** built with **Spring Boot**, **MySQL**, and **HTML5**. The system follows the **MVC architecture** and provides RESTful APIs for data operations in **JSON format**. After saving the data, an **email notification** is sent via **Gmail SMTP**.  

## **🌟 Features**  
✔️ **Create** – Add new records with `firstname`, `lastname`, `email`, and `mobile`.  
✔️ **Read** – View saved data from MySQL.  
✔️ **Update** – Modify existing records.  
✔️ **Delete** – Remove records from the database.  
✔️ **Exception Handling** – If data is not found, an error is thrown.  
✔️ **Email Notification** – Confirmation email is sent after saving data.  
✔️ **REST API** – Uses JSON format for data exchange.  

## **🔧 Technologies Used**  
- **Backend:** Spring Boot, Spring MVC, Spring Data JPA  
- **Frontend:** HTML5, CSS, JavaScript  
- **Database:** MySQL  
- **Email Service:** Gmail SMTP  
- **API Format:** JSON (RESTful Web Services)  

## **📌 Project Structure (MVC Architecture)**  

## **🛠️ Installation & Setup**  

### **1️⃣ Prerequisites**  
✅ Java 8  
✅ Spring Tool Suite (STS)  
✅ MySQL Database  
✅ Gmail Account for SMTP  

2️⃣ Configure Database (MySQL)
Create a MySQL database named crud_db and update application.properties:

properties
Copy
spring.datasource.url=jdbc:mysql://localhost:3306/crud_db
spring.datasource.username=root
spring.datasource.password=yourpassword
spring.jpa.hibernate.ddl-auto=update


3️⃣Configure Gmail SMTP for Email
properties
Copy
spring.mail.host=smtp.gmail.com
spring.mail.port=587
spring.mail.username=your-email@gmail.com
spring.mail.password=your-email-password
spring.mail.properties.mail.smtp.auth=true
spring.mail.properties.mail.smtp.starttls.enable=true

📌 API Endpoints (JSON Format)
Method	Endpoint	Description
GET	/users	Get all users
GET	/users/{id}	Get user by ID
POST	/users	Add new user
PUT	/users/{id}	Update user by ID
DELETE	/users/{id}	Delete user by ID


Error Handling
❌ If data is not found during update/delete, a custom exception is thrown.
❌ If there is an issue with email sending, a fallback mechanism is used.

📧 Email Notification
After a user submits data, a confirmation email is sent automatically via Gmail SMTP.

