-- Recipe List
CREATE TABLE tbl_recipes (
  recipe_id serial PRIMARY KEY,
  recipe_name text NOT NULL,
  food_group_id INT
);

-- Recipe Entries
INSERT INTO tbl_recipes (recipe_name) VALUES ('Chicken Vesuvio'), ('Beef Goulash'), ('Lettuce Wraps'), ('Blackberry-Apple Cocktail');

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


