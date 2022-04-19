CREATE TABLE user (
  user_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  user_email VARCHAR(100),
  user_password VARCHAR(500),
  user_post VARCHAR(500)
);

CREATE TABLE recipe (
  recipe_id SERIAL PRIMARY KEY,
  user_id INT NOT NULL REFERENCES user (user_id);
  recipe_name VARCHAR(50),
  recipe_ingredients VARCHAR(1000),
  recipe_instructions VARCHAR(5000),
  recipe_visibelity boolean
);

CREATE TABLE grocery (
  user_id INT NOT NULL REFERENCES user (user_id);
  recipe_id INT NOT NULL REFERENCES recipe (recipe_id);
  recipe_occasion VARCHAR(50)
);