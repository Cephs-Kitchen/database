-- Recipe List
CREATE TABLE tbl_recipes (
  recipe_id serial PRIMARY KEY,
  recipe_name text NOT NULL,
  food_group_id INT
);
