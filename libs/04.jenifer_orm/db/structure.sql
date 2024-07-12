CREATE TABLE migration_versions (version text NOT NULL);
CREATE TABLE users (id integer PRIMARY KEY AUTOINCREMENT, name text NOT NULL, age integer NOT NULL, created_at text NOT NULL, updated_at text NOT NULL);
