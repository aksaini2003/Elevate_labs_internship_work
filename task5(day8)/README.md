# Titanic Dataset Analysis

This project performs a comprehensive analysis of the Titanic dataset, focusing on data preprocessing, exploratory data analysis (EDA), and visualization to uncover patterns related to passenger survival.

## Table of Contents
- [Project Overview](#project-overview)
- [Dataset](#dataset)
- [Preprocessing](#preprocessing)
- [Exploratory Data Analysis (EDA)](#exploratory-data-analysis-eda)
- [Key Insights](#key-insights)
- [Requirements](#requirements)
- [How to Run](#how-to-run)

## Project Overview
This project analyzes the Titanic dataset to understand the factors affecting passenger survival. It includes data cleaning, feature engineering, and various visualizations to extract meaningful insights.

## Dataset
- **Source:** Titanic dataset (CSV format)
- **Features:** PassengerId, Survived, Pclass, Name, Sex, Age, SibSp, Parch, Ticket, Fare, Cabin, Embarked

## Preprocessing
The following preprocessing steps were performed:
- Checked for null values in columns (`Age`, `Cabin`, `Embarked`).
- Created a new feature `is_cabin` to indicate the presence of cabin information.
- Dropped the `Cabin` column after feature engineering.
- Imputed missing `Age` values with the median (due to right-skewed distribution).
- Filled missing `Embarked` values with the most frequent value ('S').
- Verified that all missing values were handled.

## Exploratory Data Analysis (EDA)
Performed various analyses and visualizations:
- **Descriptive Statistics:** Used `.describe()` and `.info()` to summarize the dataset.
- **Pairplot:** Visualized relationships between numerical features and survival.
- **Heatmaps:**
    - `Pclass` vs `Survived`
    - `Survived` vs `Embarked`
    - `Survived` vs `is_cabin`
    - `Survived` vs `Sex`
- **Univariate Analysis:**
    - Countplot of `Survived`
    - Histograms for `Age` and `Fare`
- **Bivariate Analysis:**
    - Catplot for `Pclass` and `Sex` by `Survived`
    - Correlation heatmap for `Age` and `Fare`
    - Countplot of `Sex` by `Survived`
    - Boxplot and scatterplot for `Fare` and `Survived` by `Pclass`
- **Multivariate Analysis:**
    - Pairplot for selected features and survival

## Key Insights
- **Gender and Survival:** Females had a higher survival rate than males.
- **Passenger Class and Survival:** 1st class passengers had a higher survival rate.
- **Age and Survival:** Children had a higher survival rate.
- **Fare and Class:** Passengers who paid more (first class) had higher survival chances.

## Requirements
- Python 3.x
- pandas
- numpy
- matplotlib
- seaborn

Install requirements with:
```bash
pip install pandas numpy matplotlib seaborn
```

## How to Run
1. Place the Titanic dataset CSV file in the project directory.
2. Run the Jupyter notebook or Python script to execute the analysis:
    - For Jupyter Notebook: Open `main.ipynb` and run all cells.
    - For Python Script: Run `python main.py` (if available).

## Exporting Notebook to PDF
To export the notebook as PDF:
```bash
pip install nbconvert
jupyter nbconvert --to pdf your_notebook.ipynb
```

---

Feel free to explore and modify the analysis for further insights!
