-- Database: dvdrental

-- DROP DATABASE IF EXISTS dvdrental;

CREATE DATABASE dvdrental
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_France.1252'
    LC_CTYPE = 'French_France.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
	SELECT  Ci.city, Co.country, S.store_id FROM store S 
	INNER JOIN address USING (address_id)
	INNER JOIN city Ci USING (city_id)
	INNER JOIN country Co USING (country_id)
	
	SELECT SUM(f.rental_duration) FROM store S 
	INNER JOIN staff USING (store_id)
	INNER JOIN rental R USING (staff_id)
	INNER JOIN inventory Co USING (inventory_id)
	INNER JOIN film f USING (film_id)
	
	SELECT * FROM store S 
	INNER JOIN staff USING (store_id)
	INNER JOIN rental R USING (staff_id)
	INNER JOIN inventory Co USING (inventory_id)
	INNER JOIN film f USING (film_id)
	WHERE R.return_date IS NOT NULL
	
	
	SELECT  * FROM customer Cu 
	INNER JOIN address USING (address_id)
	INNER JOIN city Ci USING (city_id)
	INNER JOIN STORE S USING (address_id)
	
	SELECT * FROM film F
	INNER JOIN film_category USING (film_id)
	INNER JOIN category C USING (category_id)
	WHERE (C.name NOT IN ('Horror')) AND (F.title NOT IN ('beast','monster','ghost','dead','zombie','undead'))