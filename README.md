# 📉 Telecom Customer Churn & Retention Analysis

### Understanding Customer Behaviour and Churn Patterns

**Python · MySQL · Power BI · Data Analysis**

A customer analytics project focused on identifying churn patterns, understanding customer characteristics, and exploring factors related to customer retention in the telecom industry.

---

## 📌 Project Overview

Customer churn is an important challenge for telecom businesses because losing customers can affect revenue and long-term growth. This project analyses customer data to understand how churn varies across contract types, tenure groups, internet services, payment methods, and customer characteristics.

Python is used for initial data inspection and preparation, MySQL is used to answer business-focused questions, and Power BI is used to present the analysis through an interactive dashboard.

## 🎯 Business Objectives

- Measure the total number of customers and the overall churn rate.
- Compare customers who have churned with those who have stayed.
- Analyse churn across contract types and tenure groups.
- Understand customer distribution by internet service and payment method.
- Explore churn patterns by gender and senior-citizen status.
- Compare monthly charges for churned and retained customers.
- Identify contract types with higher numbers of churned customers.

## 🧰 Tools & Technologies

| Tool | Purpose |
|---|---|
| **Python** | Data inspection, quality checks, and preparation |
| **Pandas & NumPy** | Data handling and manipulation |
| **MySQL** | SQL queries and business analysis |
| **Power BI** | Dashboard design and visual reporting |
| **Jupyter Notebook** | Python workflow and documentation |

## 📊 Dataset Overview

The file **`Telco_Customer_Churn_Dataset.csv`** contains **7,043 customer records and 21 columns**. It includes customer demographics, subscribed services, contract details, charges, tenure, and churn status.

### Key Dataset Fields

| Field | Description |
|---|---|
| `customerID` | Unique customer identifier |
| `gender` | Customer gender |
| `SeniorCitizen` | Senior-citizen indicator |
| `Partner` | Whether the customer has a partner |
| `Dependents` | Whether the customer has dependents |
| `tenure` | Number of months with the company |
| `InternetService` | Type of internet service |
| `Contract` | Customer contract type |
| `PaymentMethod` | Customer payment method |
| `MonthlyCharges` | Monthly amount charged |
| `TotalCharges` | Total amount charged |
| `Churn` | Whether the customer left the service |

## 🐍 Python Data Preparation

The Jupyter Notebook **`telcom.ipynb`** includes an initial data inspection and preparation workflow:

- Previewing the dataset and checking its structure.
- Reviewing descriptive statistics, columns, and data types.
- Checking missing values and their percentage.
- Checking duplicate records and duplicate customer IDs.
- Reviewing unique values in selected categorical columns.
- Applying a missing-value handling step to `MonthlyCharges`.
- Removing duplicate rows and exporting a cleaned CSV file.

## 🔍 SQL Analysis

The SQL script contains **15 business questions** covering customer churn and service usage.

| Analysis Area | Questions Explored |
|---|---|
| **Customer Overview** | Total customers, churned and retained customers, churn rate, average tenure, and monthly charges |
| **Customer Profile** | Contract distribution, senior-citizen count, gender distribution, and partner status |
| **Service & Payment Analysis** | Internet service usage, payment methods, and Tech Support subscriptions |
| **Churn Analysis** | Tenure groups, monthly charges by churn status, and churned customers by contract type |

### SQL Concepts Applied

`SELECT` · `COUNT` · `GROUP BY` · `ORDER BY` · Aggregate Functions · `CASE WHEN` · `ROUND`

## 📈 Power BI Dashboard

The project includes **`Telecom Customer Churn & Retention Analysis.pbix`**, a Power BI report designed to explore customer churn and retention patterns visually.

The dashboard complements the Python and SQL work by presenting customer metrics and comparisons in an interactive reporting format. Open the file in **Microsoft Power BI Desktop** to explore its pages, visuals, and available interactions.



## 💡 Key Learning Outcomes

- Performed initial data inspection and quality checks using Python.
- Practised handling and preparing customer data with Pandas.
- Translated telecom business questions into SQL queries.
- Analysed churn patterns across customer and service attributes.
- Presented customer analytics through a Power BI dashboard.

---

<div align="center">

**Thanks for visiting this project!**

*Turning customer data into actionable business insights.*

</div>
