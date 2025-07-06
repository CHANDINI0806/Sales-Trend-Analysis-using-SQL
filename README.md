
# Sales-Trend-Analysis-using-SQL


## 🧾 Objective
Analyze monthly **revenue** and **order volume** using an online sales dataset by performing time-based aggregations in SQL.

---

## 🛠️ Tools Used
- MySQL Workbench
- Dataset: [Online Sales Dataset - Kaggle](https://www.kaggle.com/datasets/shreyanshverma27/online-sales-dataset-popular-marketplace-data)

---

## 📁 Dataset Structure (Used Columns)
- `Transaction ID`
- `Date`
- `Total Revenue`

---

## 🧪 SQL Query Used

```sql
SELECT 
    EXTRACT(YEAR FROM STR_TO_DATE(Date, '%Y-%m-%d')) AS year,
    EXTRACT(MONTH FROM STR_TO_DATE(Date, '%Y-%m-%d')) AS month,
    SUM(`Total Revenue`) AS total_revenue,
    COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM 
    `online sales data`
GROUP BY 
    year, month
ORDER BY 
    year, month;
