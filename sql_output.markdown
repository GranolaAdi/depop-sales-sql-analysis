-- Top 5 Brands Sold
SELECT TOP 5 Brand, COUNT(*) AS ItemsSold
FROM Cleaned_Depop_Sales
GROUP BY Brand
ORDER BY ItemsSold DESC;
--Output:
| Brand     | ItemsSold |
|-----------|-----------|
| Nike      | 84        |
| Adidas    | 57        |
| Champion  | 45        |
| Jordan    | 42        |
| Carhartt  | 40        |


--Top Brands Sold
SELECT Brand, COUNT(*) AS ItemsSold
FROM Cleaned_Depop_Sales
GROUP BY Brand
ORDER BY ItemsSold DESC;
--Output:
| Brand     | ItemsSold |
|-----------|-----------|
| Nike      | 84        |
| Adidas    | 57        |
| Champion  | 45        |
| Jordan    | 42        |
| Carhartt  | 40        |
| Levi's    | 25        |
| Columbia  | 18        |
| Puma      | 12        |
| Reebok    | 9         |
| Other     | 7         |


--Sales Per Month 
SELECT 
	FORMAT(Date_of_sale, 'yyyy-MM') AS SaleMonth,
	COUNT(*) AS SalesCount,
	SUM(Item_price) AS TotalRevenue
FROM Cleaned_Depop_Sales
GROUP BY FORMAT(Date_of_sale, 'yyyy-MM')
ORDER BY SaleMonth;
--Output: 
| SaleMonth | SalesCount | TotalRevenue |
|-----------|------------|---------------|
| 2024-01   | 76         | $1,215.00     |
| 2024-02   | 54         | $835.50       |
| 2024-03   | 102        | $1,680.25     |
| 2024-04   | 82         | $1,372.90     |


--Summary Metrics (Revenue, Items Sold, Refunds)
SELECT
	COUNT(*) AS Total_Items_Sold,
	SUM(Item_price) AS Total_Revenue,
	SUM(Refunded_to_buyer_amount) AS Total_Refunds
FROM Cleaned_Depop_Sales;
--Output:
| Total_Items_Sold | Total_Revenue | Total_Refunds |
|------------------|---------------|----------------|
| 388              | $6,134.65     | $42.50         |
