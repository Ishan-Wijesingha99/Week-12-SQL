
-- example of INNER JOIN
SELECT book_prices.price, favorite_books.book_name
FROM book_prices
INNER JOIN favorite_books ON favorite_books.book_price = book_prices.id;


