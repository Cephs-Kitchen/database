-- Item Categories
CREATE TABLE tbl_item_categories (
  category_id serial PRIMARY KEY,
  category_name text NOT NULL
);

-- Items
CREATE TABLE tbl_item (
  item_id serial PRIMARY KEY,
  item_name text NOT NULL,
  category_id int REFERENCES tbl_item_categories ON DELETE CASCADE,
);