-- Unit Types
CREATE TABLE tbl_unit_types (
  unit_type_id serial PRIMARY KEY,
  unit_type_name text NOT NULL
);

-- Units and their conversion values
CREATE TABLE tbl_units (
  unit_id serial PRIMARY KEY,
  unit_name text NOT NULL,
  unit_type_id int REFERENCES tbl_unit_types ON DELETE CASCADE,
  unit_base_equivalent double precision NOT NULL
);

-- Unit Type entries
INSERT INTO tbl_unit_types (unit_type_name) VALUES ('volume'),('weight');