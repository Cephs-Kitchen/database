-- Pantry List
CREATE TABLE tbl_pantrylist (
	pantry_item_id serial PRIMARY KEY,
	item_id int REFERENCES tbl_items ON DELETE CASCADE,
	expiration date,
	amount int
);
