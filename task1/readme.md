# 🎬 Data Cleaning – Netflix Movies and TV Shows Dataset

This project focuses on cleaning and preprocessing the Netflix Movies and TV Shows dataset. It aims to prepare the raw data for future analysis, modeling, or visualization by handling inconsistencies, formatting issues, and missing values.

---

## 📁 Dataset Information

- **Dataset Name**: Netflix Movies and TV Shows
- **Source**: [Netflix Dataset on Kaggle](https://www.kaggle.com/datasets/shivamb/netflix-shows)  
- **Size**: ~6,000+ records with 12 columns
- **Format**: CSV
- **Description**: Contains details about movies and TV shows available on Netflix as of 2021, including title, cast, genre, release year, country, and more.

---

## 🧹 Data Cleaning & Preprocessing

- Handled missing values in columns like `director`, `cast`, and `country`
- Removed duplicate entries
- Standardized text columns (e.g., `country`, `gender`) to proper casing
- Converted `date_added` from text to `datetime` format
- Extracted and converted `release_year` to `int`
- Converted multi-value columns (like `cast`, `listed_in`) into lists
- Renamed ambiguous column names (e.g.,`listed_in` to `genre`)



---

## ⚙️ Technologies Used

- **Language**: Python 3.x
- **Libraries**: 
  - `pandas`
  - `numpy`
  - `matplotlib` (optional for previewing data)
  - `jupyter notebook` for interactive cleaning

---

## 📂 Project Structure

task1/
│
├── data/               # Raw or cleaned datasets
│   ├── netflix_raw.csv
│   └── netflix_cleaned.csv

│
├── main.ipynb          # Jupyter Notebook containing the full cleaning process
├── README.md           # Project documentation
