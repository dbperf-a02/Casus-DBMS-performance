SELECT SUM(invoice.in_total)
FROM invoice
JOIN customer ON customer.cu_id = invoice.in_cu_id
GROUP BY customer.cu_id
HAVING COUNT(invoice.in_id) > 0 AND
       SUM(invoice.in_total) < AVG(invoice.in_totalafterdiscount)
ORDER BY SUM(invoice.in_total);
