DELETE FROM invoicedetail
WHERE invoicedetail.ind_id
    IN (SELECT in_id FROM invoice where invoice.in_description LIKE '%t%' )
  AND invoicedetail.ind_id
    IN (SELECT in_id FROM invoice where invoice.in_date > '1-1-2006' )
  AND invoicedetail.ind_id
    IN (SELECT in_id FROM invoice where invoice.in_date < '1-1-2007' )

