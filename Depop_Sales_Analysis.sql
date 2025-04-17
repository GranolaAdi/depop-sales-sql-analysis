-- Top 5 Brands Sold
SELECT TOP 5 Brand, COUNT(*) AS ItemsSold
FROM Cleaned_Depop_Sales
GROUP BY Brand
ORDER BY ItemsSold DESC;

--Top Brands Sold
SELECT Brand, COUNT(*) AS ItemsSold
FROM Cleaned_Depop_Sales
GROUP BY Brand
ORDER BY ItemsSold DESC;

--Sales Per Month 
SELECT 
	FORMAT(Date_of_sale, 'yyyy-MM') AS SaleMonth,
	COUNT(*) AS SalesCount,
	SUM(Item_price) AS TotalRevenue
FROM Cleaned_Depop_Sales
GROUP BY FORMAT(Date_of_sale, 'yyyy-MM')
ORDER BY SaleMonth;

--Summary Metrics (Revenue, Items Sold, Refunds)
SELECT
	COUNT(*) AS Total_Items_Sold,
	SUM(Item_price) AS Total_Revenue,
	SUM(Refunded_to_buyer_amount) AS Total_Refunds
FROM Cleaned_Depop_Sales;