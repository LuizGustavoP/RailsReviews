CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE IF NOT EXISTS "apelidos" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "nome" varchar, "apelido" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE sqlite_sequence(name,seq);
CREATE TABLE IF NOT EXISTS "developers" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "nome" varchar, "descr" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE IF NOT EXISTS "publishers" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "nome" varchar, "descr" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE IF NOT EXISTS "platforms" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "nome" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE IF NOT EXISTS "games" ("id" integer NOT NULL PRIMARY KEY, "nome" varchar DEFAULT NULL, "dev" varchar DEFAULT NULL, "pub" varchar DEFAULT NULL, "score" float DEFAULT NULL, "platform" varchar DEFAULT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "publisher_id" integer DEFAULT NULL, "platform_id" integer DEFAULT NULL, "developer_id" integer);
CREATE INDEX "index_games_on_publisher_id" ON "games" ("publisher_id");
CREATE INDEX "index_games_on_platform_id" ON "games" ("platform_id");
CREATE INDEX "index_games_on_developer_id" ON "games" ("developer_id");
CREATE TABLE IF NOT EXISTS "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "nome" varchar, "email" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "password_digest" varchar);
INSERT INTO "schema_migrations" (version) VALUES
('20200528181657'),
('20200528181930'),
('20200529183823'),
('20200529183838'),
('20200529183924'),
('20200529184447'),
('20200529184622'),
('20200529184657'),
('20200529185039'),
('20200529185321'),
('20200529192837'),
('20200529192949'),
('20200606213304'),
('20200606213506');


