-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

CREATE TABLE moons (
  moon_id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

INSERT INTO moons
  (name)
VALUES
  ('The Moon'),
  ('Phobos'),
  ('Deimos'),
  ('Naiad'),
  ('Thalassa'),
  ('Despina'),
  ('Galatea'),
  ('Larissa'),
  ('S/2004 N 1'),
  ('Proteus'),
  ('Triton'),
  ('Nereid'),
  ('Halimede'),
  ('Sao'),
  ('Laomedeia'),
  ('Psamathe'),
  ('Neso');

CREATE TABLE planets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_years FLOAT NOT NULL,
  orbits_around TEXT NOT NULL,
  galaxy TEXT NOT NULL,
  moon_id INTEGER REFERENCES moons ON DELETE SET NULL
);

INSERT INTO planets
  (name, orbital_period_in_years, orbits_around, galaxy, moon_id)
VALUES
  ('Earth', 1.00, 'The Sun', 'Milky Way', 1),
  ('Mars', 1.88, 'The Sun', 'Milky Way', 2),
  ('Mars', 1.88, 'The Sun', 'Milky Way', 3),
  ('Venus', 0.62, 'The Sun', 'Milky Way', NULL),
  ('Neptune', 164.8, 'The Sun', 'Milky Way', 4),
  ('Neptune', 164.8, 'The Sun', 'Milky Way', 5),
  ('Neptune', 164.8, 'The Sun', 'Milky Way', 6),
  ('Neptune', 164.8, 'The Sun', 'Milky Way', 7),
  ('Neptune', 164.8, 'The Sun', 'Milky Way', 8),
  ('Neptune', 164.8, 'The Sun', 'Milky Way', 9),
  ('Neptune', 164.8, 'The Sun', 'Milky Way', 10),
  ('Neptune', 164.8, 'The Sun', 'Milky Way', 11),
  ('Neptune', 164.8, 'The Sun', 'Milky Way', 12),
  ('Neptune', 164.8, 'The Sun', 'Milky Way', 13),
  ('Neptune', 164.8, 'The Sun', 'Milky Way', 14),
  ('Neptune', 164.8, 'The Sun', 'Milky Way', 15),
  ('Neptune', 164.8, 'The Sun', 'Milky Way', 16),
  ('Neptune', 164.8, 'The Sun', 'Milky Way', 17),
  ('Proxima Centauri b', 0.03, 'Proxima Centauri', 'Milky Way', NULL),
  ('Gliese 876 b', 0.23, 'Gliese 876', 'Milky Way', NULL);
