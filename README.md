# Enhancing Cybersecurity: A Model for Threat Detection Utilizing AI

## Project Overview
This project aims to enhance cybersecurity by using **Machine Learning (ML) techniques** to detect potential threats. The system is built using **Django** for the backend, **MySQL** for data storage, and **HTML, CSS, JavaScript** for the frontend. It supports threat detection using **Decision Tree, Random Forest, and Artificial Neural Network (ANN)** models.

## Features
- Web-based interface for threat detection
- Machine Learning models trained on cybersecurity data
- Django backend with MySQL database
- REST API for predicting threats
- Secure and scalable architecture

## Technologies Used
- **Backend:** Django, Python 3.7.5
- **Frontend:** HTML, CSS, JavaScript
- **Database:** MySQL
- **ML Algorithms:** Decision Tree, Random Forest, Artificial Neural Network
- **Libraries:** Pandas, NumPy, Scikit-Learn, TensorFlow, Joblib

## Installation & Setup
### Prerequisites
Ensure you have the following installed:
- Python 3.7.5
- Django
- MySQL
- Required Python libraries: `pip install django pandas numpy scikit-learn tensorflow joblib mysqlclient`


### Run Migrations
```bash
python manage.py makemigrations
python manage.py migrate
```

### Train the Machine Learning Models
Ensure `cybersecurity_data.csv` is available in the project directory, then run:
```bash
python train_models.py
```


