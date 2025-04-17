# 🛍️ Depop Sales SQL Analysis (2024)

This project analyzes over 300 Depop sales using Microsoft SQL Server. It tracks trends like top-selling brands, monthly revenue, and refunds, and helps me practice real-world SQL analysis.

---

## 📌 Key Features

- Top-selling brands
- Monthly sales and revenue
- Summary KPIs (revenue, refunds, items sold)

---

## 🧰 Tools Used

- SQL Server Management Studio (SSMS)
- GitHub
- Excel (for export/visualization)

---

## 💻 Sample SQL Code

```sql
-- Top 5 Brands Sold
SELECT TOP 5 Brand, COUNT(*) AS ItemsSold
FROM Cleaned_Depop_Sales
GROUP BY Brand
ORDER BY ItemsSold DESC;
