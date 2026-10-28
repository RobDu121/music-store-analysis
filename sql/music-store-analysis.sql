--Total revenue
SELECT 
	Round(SUM(Total), 2) AS total_revenue
From Invoice;

--Revenue by Country
SELECT BillingCountry, SUM(Total) AS total_revenue_by_country
From Invoice 
Group by(BillingCountry);


--Revenue by month
SELECT 
	STRFTIME('%Y-%m', InvoiceDate) as month,
	Round(SUM(Total), 2) AS total_revenue,
	Count(InvoiceId) AS total_invoices
FROM Invoice
Group BY month 
ORDER BY month;

--Revenue by genre
SELECT 
	g.name as genre,
	ROUND(SUM(il.UnitPrice * il.Quantity), 2) AS total_revenue,
	Sum(il.Quantity) AS quantity_sold
FROM InvoiceLine il
JOIN Track t
	ON il.TrackId = t.TrackId 
Join Genre g
	ON t.GenreId = g.GenreId 
Group BY g.Name 
ORDER BY total_revenue DESC;

--Top 10 artists by revenue
SELECT
    ar.Name AS artist,
    ROUND(SUM(il.UnitPrice * il.Quantity), 2) AS total_revenue,
    SUM(il.Quantity) AS tracks_sold
FROM InvoiceLine il
JOIN Track t
    ON il.TrackId = t.TrackId
JOIN Album al
    ON t.AlbumId = al.AlbumId
JOIN Artist ar
    ON al.ArtistId = ar.ArtistId
GROUP BY ar.Name
ORDER BY total_revenue DESC
LIMIT 10;

--Top 10 customers by spending
SELECT
    c.CustomerId,
    c.FirstName || ' ' || c.LastName AS customer_name,
    c.Country,
    ROUND(SUM(i.Total), 2) AS total_spent,
    COUNT(i.InvoiceId) AS total_orders
FROM Customer c
JOIN Invoice i
    ON c.CustomerId = i.CustomerId
GROUP BY c.CustomerId, customer_name, c.Country
ORDER BY total_spent DESC
LIMIT 10;

--Revenue by sales support employee
SELECT
    e.FirstName || ' ' || e.LastName AS employee_name,
    ROUND(SUM(i.Total), 2) AS total_revenue,
    COUNT(DISTINCT c.CustomerId) AS total_customers,
    COUNT(i.InvoiceId) AS total_invoices
FROM Employee e
JOIN Customer c
    ON e.EmployeeId = c.SupportRepId
JOIN Invoice i
    ON c.CustomerId = i.CustomerId
GROUP BY employee_name
ORDER BY total_revenue DESC;
