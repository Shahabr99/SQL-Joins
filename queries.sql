-- write your queries here
SELECT * FROM owners JOIN vehicles ON owners.id = vehicles.owner_id;
SELECT first_name, last_name, COUNT(*) FROM owners JOIN vehicles ON owners_id = vehicles.owner_id GROUP BY owners.first_name, owners.last_name GROUP BY count ASC;
SELECT first_name, last_name, ROUND(AVG(price)) AS average_price, COUNT(*) AS count FROM owners JOIN vehicles ON owners.id = vehicles.owner_id GROUP BY owners.first_name, owners.last_name HAVING COUNT(*) > 1 AND ROUND(AVG(price)) > 10000 ORDER BY first_name DESC;