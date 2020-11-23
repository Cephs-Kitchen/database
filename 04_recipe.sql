-- Recipe List
CREATE TABLE tbl_recipes (
  recipe_id serial PRIMARY KEY,
  recipe_name text NOT NULL,
  food_group_id INT,
  ingredient_list json,
);

-- Recipe Entries
INSERT INTO tbl_recipes
  (recipe_name, food_group_id, ingredient_list)
VALUES
  ('Beef Goulash', 4, '{
    "unsalted butter":["0.25","cup"],
    "olive oil":["0.25","cup"],
    "beef tips":["5","pound"],
    "salt and pepper":["",""],
    "onion":["5","pound"],
    "paprika":["0.25","cup"],
    "beef stock":["3","cup"],
    "sour cream":["",""],
    "egg noodles":["2","pound"]
  }'),
  ('Lettuce Wraps', 2, '{
    "toasted sesame oil":["1","tablespoon"],
    "ground turkey":["1","pound"],
    "frozen stirfry vegetables":["16","ounce"],
    "broccoli slaw":["1","package"],
    "roasted unsalted peanuts":["1","cup"],
    "tsang bangkok padang peanut sauce":["6","ounce"],
    "head of lettuce":["0.5",""]
  }'),
;

-- Food Group List
CREATE TABLE tbl_food_group (
    food_group_id serial PRIMARY KEY,
    food_group_name text
);

-- Food Group Entries
INSERT INTO tbl_food_group (food_group_name) VALUES ('Fruits'), ('Vegetables'), ('Grains'), ('Proteins'), ('Dairy');
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


