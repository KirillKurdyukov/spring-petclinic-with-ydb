DROP TABLE vet_specialties;
DROP TABLE vets;
DROP TABLE specialties;
DROP TABLE visits;
DROP TABLE pets;
DROP TABLE types;
DROP TABLE owners;

CREATE TABLE vets
(
  id         INT32,
  first_name TEXT,
  last_name  TEXT,

  PRIMARY KEY (id),
  INDEX last_name_index GLOBAL ON (last_name)
);

CREATE TABLE specialties
(
  id   INT32,
  name TEXT,

  PRIMARY KEY (id),
  INDEX specialties_name_index GLOBAL ON (name)
);

CREATE TABLE vet_specialties
(
  vet_id       INT32,
  specialty_id INT32,
  primary key (vet_id, specialty_id)
);

CREATE TABLE types
(
  id   INT,
  name TEXT,

  PRIMARY KEY (id),
  INDEX types_name_index GLOBAL ON (name)
);

CREATE TABLE owners
(
  id         INT,
  first_name TEXT,
  last_name  TEXT,
  address    TEXT,
  city       TEXT,
  telephone  TEXT,

  PRIMARY KEY (id),
  INDEX owners_last_name_index GLOBAL ON (last_name)
);

CREATE TABLE pets
(
  id         INT,
  name       TEXT,
  birth_date DATE,
  type_id    INT32,
  owner_id   INT,

  PRIMARY KEY (id),
  INDEX pets_name_index GLOBAL ON (name),
  INDEX pets_owner_id_index GLOBAL ON (owner_id)
);

CREATE TABLE visits
(
  id          INT,
  pet_id      INT,
  visit_date  DATE,
  description TEXT,

  PRIMARY KEY (id),
  INDEX visits_pet_id_index GLOBAL ON (pet_id)
);
