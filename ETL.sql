-- Create Beer ID Table--------------------------
DROP TABLE IF EXISTS beer_id_table;
CREATE TABLE beer_id_table (
	id INT Not Null Primary Key,
	name VARCHAR);
SELECT * FROM beer_id_table;

-- Create Brewery ID Table--------------------------
DROP TABLE IF EXISTS brewery_id_table;
CREATE TABLE brewery_id_table (
	brewery_id INT Not Null Primary Key,
	name VARCHAR);
SELECT * FROM brewery_id_table;


DROP TABLE IF EXISTS beer_profile_table;
CREATE TABLE beer_profile_table (
	id INT Not Null,
	name VARCHAR ,
	style VARCHAR,
	abv float,
	availability VARCHAR,
	FOREIGN KEY (id) REFERENCES beer_id_table(id),);
SELECT * FROM beer_profile_table;