-- Recipe List
CREATE TABLE tbl_recipes (
  recipe_id serial PRIMARY KEY,
  recipe_name text NOT NULL,
  food_group_id INT,
  food_group_name text
);

-- Recipe Entries
INSERT INTO tbl_recipes (recipe_name, food_group_id) VALUES ('Beef Goulash', 4), ('Lettuce Wraps', 2), ('Blackberry-Apple Cocktail', 1), ('Cheese Omelette', 5), ('Spaghetti Frittata', 3);

-- Food Group List
CREATE TABLE tbl_food_group (
    food_group_id serial PRIMARY KEY,
    food_group_name text
);

-- Food Group Entries
INSERT INTO tbl_food_group (food_group_name) VALUES ('Fruits'), ('Vegetables'), (' Grains'), ('Proteins'), ('Dairy');
-- Fruits = 1
-- Vegetables = 2
-- Grains = 3
-- Proteins = 4
-- Dairy = 5

-- Quantity List
CREATE TABLE tbl_quantity (
    quantity_id serial PRIMARY KEY,
    recipe_id INT,
    ingredient_id INT,
    ingredient_measurement_id INT,
    ingredient_quantity FLOAT
);


