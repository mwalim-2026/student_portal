                          ##Student Portal Web App

A simple Flask web application to manage students, grades, and generate transcripts.

# Technologies Used

- Python 3.11
- Flask 2.3
- PostgreSQL 15
- psycopg2-binary
- ReportLab 4.0
- HTML/CSS/Bootstrap 5


 #screenshots
     a.127.0.0.1:5000/students
<img width="1904" height="1019" alt="image" src="https://github.com/user-attachments/assets/4bbad463-248a-4620-9fc2-00bc0f4aa4ee" />
<img width="1912" height="712" alt="image" src="https://github.com/user-attachments/assets/8ae7535c-65bd-4be1-bcb3-5bd3ce7d2279" />
<img width="1918" height="545" alt="image" src="https://github.com/user-attachments/assets/7249359c-5db6-4752-8ba7-6c2863a90ae6" />

     b.127.0.0.1:5000/grades
<img width="1907" height="1011" alt="image" src="https://github.com/user-attachments/assets/3545ce17-9693-4614-b18a-c2c91fdad55c" />
<img width="1919" height="567" alt="image" src="https://github.com/user-attachments/assets/a82eac61-1a60-4605-a64b-88383331f373" />
<img width="1911" height="454" alt="image" src="https://github.com/user-attachments/assets/cbabeed3-0374-4911-a87a-20b597557c2e" /> 

     c.127.0.0.1:5000/students/1/grades

<img width="1919" height="452" alt="image" src="https://github.com/user-attachments/assets/cb8cf3c9-7aae-49c0-896c-329ceb4ed3db" />

      d.127.0.0.1:5000/dashboard
<img width="1914" height="402" alt="image" src="https://github.com/user-attachments/assets/cd2fc783-6f37-4eda-9d6d-22b31bb7017d" />
<img width="1909" height="922" alt="image" src="https://github.com/user-attachments/assets/641ccadf-2f91-449b-be07-5501b6afc4f8" />
<img width="1918" height="272" alt="image" src="https://github.com/user-attachments/assets/9e91d84a-3446-48db-875b-cda251bd98ae" />





#setup instruction
1. Clone the repository:
   ```bash
   git clone https://github.com/mwalim-2026/student_portal.git
2. Create and activate a virtual environment
python -m venv venv

Windows:
venv\Scripts\activate


3. Install dependencies
pip install -r requirements.txt
4. Set up environment variables

Create a .env file in the root directory and add:

DB_HOST=localhost
DB_NAME=student_portal
DB_USER=postgres
DB_PASS=Mwalim

5. Create PostgreSQL database

Open PostgreSQL and run:

CREATE DATABASE student_portal;
6. Run database schema
psql -U postgres -d student_portal -f schema.sql
7. Run the application
flask run

Then open your browser and go to:

http://127.0.0.1:5000/students
http://127.0.0.1:5000/grades
http://127.0.0.1:5000/students/1/grades
http://127.0.0.1:5000/dashboard

# Features
1. Student Management
Add new students
View all students
Update student details
Delete students
2. Grade Management
Record student grades
View grades per student
Calculate performance
3. Analytics Dashboard
Visualize student performance using Chart.js
Display grade distributions
4. PDF Transcript Generation
Generate downloadable student transcripts using ReportLab
5. Input Validation & Error Handling
Server-side validation for all forms
Safe database operations using try/except

# Project Structure
student_portal/
│── app.py
│── schema.sql
│── requirements.txt
│── .env.example
│── templates/
│── static/
│── README.md
│── .gitignore

 #Author
Name: Murithi Brown Mwalim
Student Number: 2600708

 #License

This project is for academic purposes only.
