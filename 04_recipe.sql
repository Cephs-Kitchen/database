-- Recipe List
CREATE TABLE tbl_recipes (
  recipe_id serial PRIMARY KEY,
  recipe_name text NOT NULL,
  food_group_id INT
);

-- Food Group List
CREATE TABLE tbl_food_group (
    food_group_id serial PRIMARY KEY,
    food_group_name text
);

-- Quantity List
CREATE TABLE tbl_quantity (
    quantity_id serial PRIMARY KEY,
    recipe_id INT,
    ingredient_id INT,
    ingredient_measurement_id INT,
    ingredient_quantity FLOAT
);
