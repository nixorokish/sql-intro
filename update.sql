-- Find all customers with fax numbers and set those numbers to null.
UPDATE customer
SET fax = NULL
WHERE fax IS NOT NULL;

-- Find all customers with no company (null) and set their company to “Self”.
UPDATE customer
SET company = 'self'
WHERE company IS NULL;

-- Find the customer Julia Barnett and change her last name to Thompson.
UPDATE customer
SET last_name = 'Thompson'
WHERE customer_id = 28 AND first_name = 'Julia';

-- Find the customer with this email luisrojas@yahoo.cl and change his support rep to 4.
UPDATE customer
SET support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl';

-- Find all tracks that are the genre Metal and have no composer. Set the composer to “The darkness around us”.
UPDATE track
SET composer = 'The darkness around us'
WHERE genre_id = 3 AND composer IS NULL;