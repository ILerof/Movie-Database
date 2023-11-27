-- 1. Create a query that will retrieve only selected columns from the selected table.
SELECT user_nickname FROM "user";

--2. Create a query that will select a user/person or similar table based on the email.
SELECT * FROM user_detail WHERE user_email = 'piccolist@gmail.com';

--3. Create at least one UPDATE, INSERT, DELETE, and ALTER TABLE query.
UPDATE movie SET movie_budget = 9500000 WHERE movie_id = 1;
UPDATE movie SET movie_budget = 1000 WHERE movie_id = 2;
UPDATE movie SET movie_budget = 600000 WHERE movie_id = 3;
UPDATE movie SET movie_budget = 50000 WHERE movie_id = 4;
UPDATE movie SET movie_budget = 123456 WHERE movie_id = 5;

INSERT INTO movie_comments( user_id, movie_id, comment_text, comment_publish)
VALUES (8,4, 'great!', '2020-01-01');

DELETE FROM country WHERE country_id = 10;

ALTER TABLE user_detail RENAME TO user_details;

ALTER TABLE user_details RENAME TO user_detail;

--4. Create a series of queries that will separately use the following:
-- NOTE: “;” means perform both queries separately and “/” means perform one or both queries.
-- NOTE: If necessary, add additional columns or tables from project assignment 1. Perform the
-- queries on meaningful data, e.g., do not perform AVG on id column.
-- (a) WHERE; WHERE with AND; WHERE with OR; WHERE with BETWEEN
SELECT * FROM user_detail WHERE user_picture = 'sweet photo';
SELECT * FROM actor WHERE actor_first_name = 'Uma' AND actor_last_name = 'Turman';
SELECT * FROM director WHERE director_birthday = '1963-02-27' OR director_last_name = 'Tarantino';
SELECT * FROM movie WHERE movie_release_date BETWEEN '1998-05-16' AND '2005-06-29';

-- (b) LIKE; NOT LIKE
SELECT user_nickname FROM "user" WHERE user_nickname LIKE 'p%';
SELECT user_nickname FROM "user" WHERE user_nickname NOT LIKE 'the%';

-- (c) SUBSTRING; TRIM; CONCAT; COALESCE
SELECT substring(user_nickname, 1, 3) FROM "user";
SELECT trim(LEADING 'the_key' FROM user_nickname) FROM "user";
SELECT concat(actor_first_name, ' ', actor_last_name)AS actor_full_name FROM actor;
SELECT coalesce(user_email, 'no email' ) AS Email, coalesce(user_picture, 'n/a' ) AS Picture FROM user_detail;

-- (d) SUM; MIN; MAX; AVG;
SELECT sum(movie_budget) AS budget_sum FROM movie;
SELECT min(movie_budget) AS budget_min FROM movie;
SELECT max(movie_budget) AS budget_max FROM movie;
SELECT avg(movie_budget) AS budget_avg FROM movie;

-- (e) GROUP BY; GROUP BY and HAVING; GROUP BY, HAVING, and WHERE;
SELECT movie_name, movie_budget FROM movie GROUP BY movie.movie_name, movie.movie_budget;

SELECT movie_budget FROM movie GROUP BY movie.movie_budget HAVING movie.movie_budget > 49000;

SELECT movie_budget FROM movie AS freak WHERE movie_release_date = '1994-04-21' GROUP BY freak.movie_budget
HAVING freak.movie_budget > 49000;

-- (f) UNION ALL / UNION; DISTINCT; COUNT; EXCEPT; INTERSECT
SELECT 'director' AS role, director_first_name AS first_name, director_last_name AS last_name FROM director
UNION SELECT 'actor' AS role, actor_first_name AS first_name, actor_last_name AS last_name FROM actor;

SELECT 'director' AS role, director_first_name AS first_name, director_last_name AS last_name FROM director
UNION ALL SELECT 'actor' AS role, actor_first_name AS first_name, actor_last_name AS last_name FROM actor;

SELECT DISTINCT user_id FROM user_has_favorite_actor;

SELECT count(movie_budget) FROM movie WHERE movie.movie_budget < 49000;
SELECT user_id AS not_duplicates FROM user_has_viewed_movie EXCEPT SELECT user_id FROM user_has_wished_movie;
SELECT user_id AS duplicates FROM user_has_viewed_movie INTERSECT SELECT user_id FROM user_has_wished_movie;

-- (g) LEFT JOIN; RIGHT JOIN; FULL OUTER JOIN; NATURAL JOIN
SELECT movie_release_date, comment_publish FROM movie LEFT JOIN movie_comments mc ON movie.movie_id = mc.movie_id;
SELECT movie_release_date, comment_publish FROM movie RIGHT JOIN movie_comments mc ON movie.movie_id = mc.movie_id;
SELECT movie_release_date, comment_publish FROM movie FULL OUTER JOIN movie_comments mc ON movie.movie_id = mc.movie_id;
SELECT * FROM movie NATURAL JOIN movie_comments;

--5. Use in one query: LEFT JOIN, GROUP BY, HAVING, ORDER BY, AVG, and DISTINCT.

INSERT INTO movie(movie_name, movie_description, movie_release_date, movie_budget)
VALUES ('Harry Potter and the Goblet of Fire', 'best film of this year', '2005-06-29', 8959294);

INSERT INTO movie_comments(user_id, movie_id, comment_text, comment_publish)
VALUES (12, 7, 'Amazing!', '2020-01-01');

SELECT DISTINCT movie_release_date, avg(movie_budget)FROM movie LEFT JOIN movie_comments mc
ON movie.movie_id = mc.movie_id
GROUP BY movie_release_date HAVING movie_release_date = '2005-06-29';

--6. Create a query that will use any aggregate function and GROUP BY with HAVING.

INSERT INTO movie(movie_name, movie_description, movie_release_date, movie_budget)
VALUES ('Oppenheimer', 'robert', '2023-07-20', 1500000);

SELECT movie.movie_id, count(movie.movie_id) AS movie_has_description FROM movie
LEFT JOIN movie_comments mc ON movie.movie_id = mc.movie_id
GROUP BY movie.movie_id, movie_description
HAVING movie.movie_description IS NOT NULL;

--7. Create a query that will join at least three tables and will use GROUP BY, COUNT, and HAVING.

SELECT country.country_id, count(movie.movie_id) AS movie_count, country_name FROM country
LEFT JOIN movie_has_country ON country.country_id = movie_has_country.country_id
LEFT JOIN movie ON movie_has_country.movie_id = movie.movie_id
GROUP BY country.country_id, movie_has_country.country_id
HAVING count(movie.movie_id) > 0;

--8. Create a query that will return the data from an arbitrary table for the last one and half days
--(1 day + 12 hours, i.e., 36 hours). Do not hard code the query (e.g., created at > 7-11-2021)!

--(a) Do it programmatically with DATE functions
INSERT INTO movie (movie_name, movie_description, movie_release_date, movie_budget)
VALUES ('BeeMovie', 'bees','2023-11-17 ', 95433 );

SELECT movie_release_date FROM movie
WHERE movie.movie_release_date >= (current_date - INTERVAL '36 hours');

--9. Create a query that will return data from the last month (starting from the first day of the month).

INSERT INTO movie(movie_name, movie_description, movie_release_date, movie_budget)
VALUES ('New Film', 'test last month', '2023-10-09', 5434);

SELECT movie_release_date FROM movie
WHERE date_part('month', movie_release_date) = date_part('month', current_date) - 1
AND date_part('year', movie_release_date) = date_part('year', current_date);

--10. Write a select that will remove accents on a selected string (e.g., ´a will be converted to a).

INSERT INTO movie(movie_name, movie_description, movie_release_date, movie_budget)
VALUES ('Zabijáci rozkvetlého měsíce' , 'velmi dlouhy film :D', '2023-10-19', 9686575);

CREATE EXTENSION IF NOT EXISTS unaccent SCHEMA public;

--(a) Beforehand, you will need to save data that contain accents in the database (e.g., save
-- some Czech surname in the database that has accents).

SELECT unaccent(movie_name) AS movie , movie_description FROM movie;

--(b) NOTE: Consider a situation, you need to implement a search function in the system that
-- searches the person by surname both when “Seda” or “Seda” is entered.

SELECT movie_name AS movie, movie_description FROM movie WHERE lower(unaccent(movie_name)) LIKE '%zabijaci%';

-- 11. Create a query for pagination in an application (use LIMIT and OFFSET).

SELECT * FROM country ORDER BY country_id LIMIT 10 OFFSET 40;

-- 12. Create a query that will use a subquery in FROM.

SELECT * FROM (SELECT country_id FROM country WHERE country_id > 40) AS ccl;

-- 13. Create a query that will use a subquery in the WHERE condition.

SELECT movie_name, movie_release_date, movie_budget FROM movie
WHERE movie_budget > (SELECT avg(movie_budget) FROM movie);

-- 14. Create a query that will join at least five tables.

SELECT * FROM movie
INNER JOIN movie_comments ON movie.movie_id = movie_comments.movie_id
INNER JOIN movie_has_director ON movie.movie_id = movie_has_director.movie_id
INNER JOIN director ON movie_has_director.director_id = director.director_id
INNER JOIN movie_has_actor ON movie.movie_id = movie_has_actor.movie_id
INNER JOIN actor ON movie_has_actor.actor_id = actor.actor_id;

-- 15. Modify the database from the first project assignment to improve integrity constraints (e.g.,
-- reduce the size for varchar columns or to add unique constraints, e.g., for email column).

ALTER TABLE user_detail
ADD CONSTRAINT user_detail_pk2
UNIQUE (user_email); -- Unique key for email

ALTER TABLE country
ADD CONSTRAINT country_pk2
UNIQUE (country_name); -- make unique, because each country is unigue.

-- (a) Set/improve cascading, explain places where you set/improve cascading and why?

ALTER TABLE user_detail
ADD CONSTRAINT user_detail_fk
FOREIGN KEY (user_id)
REFERENCES "user" (user_id)
ON DELETE CASCADE;

ALTER TABLE user_has_wished_movie
ADD CONSTRAINT user_has_wished_movie__user_id_fk
FOREIGN KEY (user_id)
REFERENCES "user" (user_id)
ON DELETE CASCADE;

ALTER TABLE movie_comments
ADD CONSTRAINT movie_comments_user_id_fk
FOREIGN KEY (user_id)
REFERENCES "user" (user_id)
ON DELETE CASCADE;

ALTER TABLE movie_comments
ADD CONSTRAINT movie_comments_movie_id_fk
FOREIGN KEY (movie_id)
REFERENCES movie (movie_id)
ON DELETE CASCADE;

ALTER TABLE user_has_viewed_movie
ADD CONSTRAINT user_has_viewed_movie_user_id_fk
FOREIGN KEY (user_id)
REFERENCES "user" (user_id)
ON DELETE CASCADE;

ALTER TABLE user_has_viewed_movie
ADD CONSTRAINT user_has_viewed_movie_movie_id_fk
FOREIGN KEY (movie_id)
REFERENCES movie (movie_id)
ON DELETE CASCADE;

ALTER TABLE user_has_favorite_genre
ADD CONSTRAINT user_has_favorite_genre_user_id_fk
FOREIGN KEY (user_id)
REFERENCES "user" (user_id)
ON DELETE CASCADE;

ALTER TABLE user_has_favorite_genre
ADD CONSTRAINT user_has_favorite_genre__fk
FOREIGN KEY (genre_id)
REFERENCES genre (genre_id)
ON DELETE CASCADE;

ALTER TABLE user_has_favorite_director
ADD CONSTRAINT user_has_favorite_director_user_id_fk
FOREIGN KEY (user_id)
REFERENCES "user" (user_id)
ON DELETE CASCADE;

ALTER TABLE user_has_favorite_director
ADD CONSTRAINT user_has_favorite_director_director_id_fk
FOREIGN KEY (director_id)
REFERENCES director (director_id)
ON DELETE CASCADE;

ALTER TABLE user_has_favorite_actor
ADD CONSTRAINT user_has_favorite_actor_user_id_fk
FOREIGN KEY (user_id)
REFERENCES "user" (user_id)
ON DELETE CASCADE;

ALTER TABLE user_has_favorite_actor
ADD CONSTRAINT user_has_favorite_actor_actor_id_fk
FOREIGN KEY (actor_id)
REFERENCES actor (actor_id)
ON DELETE CASCADE;

--16. Create database indexes (create it only on columns where it can make sense).

--(a) Before you create a database index, perform a query that will use the WHERE condition
--on a column without an index and then perform the same query on the column with an
--index (note: use EXPLAIN keyword to note the differences – provide a comparison of
--the execution plans).

DROP INDEX IF EXISTS user_user_surname_index;
DROP INDEX IF EXISTS country_country_name_index;

EXPLAIN ANALYSE SELECT * FROM "user" WHERE user_nickname = 'the_key36';
EXPLAIN ANALYSE SELECT * FROM "country" WHERE country_name = 'USA';

CREATE INDEX user_user_surname_index ON "user"(user_nickname);
CREATE INDEX country_country_name_index ON country(country_name);

--(b) Explain why it made sense to set indexes for these column(s).
--pdf
--(c) Explain the benefits and pitfalls of setting up the indexes.
--pdf

--17. Create arbitrary database procedure (consider some suitable case).

CREATE OR REPLACE PROCEDURE get_user_details(user_id_param INTEGER)
LANGUAGE plpgsql
AS $$
DECLARE
    user_info RECORD;
BEGIN
    SELECT
        *
    INTO
        user_info
    FROM
        "user"
    WHERE
        user_id = user_id_param;
    IF found THEN
        RAISE NOTICE 'User ID: %, Nickname: %',
                     user_info.user_id, user_info.user_nickname;
    ELSE
        RAISE EXCEPTION 'User with ID % not found.', user_id_param;
    END IF;
END;
$$;

CALL get_user_details(1);


--18. Create arbitrary database function
CREATE OR REPLACE FUNCTION calculate_average_budget(year_in INTEGER)
RETURNS DECIMAL(10, 2) AS $$
DECLARE
    total_budget DECIMAL(18, 2) := 0;
    movie_count INTEGER := 0;
    avg_budget DECIMAL(10, 2);
BEGIN
    FOR total_budget, movie_count IN
        SELECT
            COALESCE(SUM(movie_budget), 0),
            COUNT(*)
        FROM
            movie
        WHERE
            EXTRACT(YEAR FROM movie_release_date) = year_in
    LOOP
        IF movie_count > 0 THEN
            avg_budget := total_budget / movie_count;
        ELSE
            avg_budget := 0;
        END IF;
    END LOOP;

    RETURN avg_budget;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM calculate_average_budget(2023);


--19. Create arbitrary database trigger.

CREATE OR REPLACE FUNCTION update_user_detail_email()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.user_email IS NOT NULL THEN
        UPDATE user_detail
        SET user_email = NEW.user_email
        WHERE user_id = NEW.user_id;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER user_update_trigger
AFTER UPDATE ON "user"
FOR EACH ROW
EXECUTE FUNCTION update_user_detail_email();

--20. Create arbitrary database view (consider some complex cases).

CREATE OR REPLACE VIEW user_movie_interactions AS
SELECT
    u.user_id,
    u.user_nickname,
    COUNT(DISTINCT w.movie_id) AS total_wished_movies,
    COUNT(DISTINCT mv.movie_id) AS total_viewed_movies,
    COUNT(DISTINCT mc.movie_id) AS total_commented_movies
FROM
    "user" u
LEFT JOIN
    user_has_wished_movie w ON u.user_id = w.user_id
LEFT JOIN
    user_has_viewed_movie mv ON u.user_id = mv.user_id
LEFT JOIN
    movie_comments mc ON u.user_id = mc.user_id
GROUP BY
    u.user_id, u.user_nickname;

--21.  Create database materialized view (consider some complicated SQL query with several joins,
--aggregate function, GROUP BY with HAVING and complex WHERE condition). Explain
--why this materialized view is beneficial/needed.

CREATE MATERIALIZED VIEW movie_stats AS
SELECT
    m.movie_id,
    m.movie_name,
    m.movie_release_date,
    COUNT(DISTINCT uwm.user_id) AS num_wished_users,
    COUNT(DISTINCT uvm.user_id) AS num_viewed_users,
    COUNT(DISTINCT uwm.user_id) + COUNT(DISTINCT uvm.user_id) AS total_interactions,
    AVG(m.movie_budget) AS avg_budget,
    COUNT(*) AS total_movies
FROM
    movie m
LEFT JOIN
    user_has_wished_movie uwm ON m.movie_id = uwm.movie_id
LEFT JOIN
    user_has_viewed_movie uvm ON m.movie_id = uvm.movie_id
WHERE
   m.movie_budget > 1000
GROUP BY
    m.movie_id, m.movie_name, m.movie_release_date
HAVING
    m.movie_release_date > '1900-01-01';

-- 22. if you use public schema create a new schema for your database called bds.
-- (a) migrate all your data from public to bds schema.
CREATE SCHEMA bds;

ALTER TABLE public."user" SET SCHEMA bds;
ALTER TABLE public.movie SET SCHEMA bds;
ALTER TABLE public.user_has_wished_movie SET SCHEMA bds;
ALTER TABLE public.movie_comments SET SCHEMA bds;
ALTER TABLE public.user_has_viewed_movie SET SCHEMA bds;
ALTER TABLE public.user_detail SET SCHEMA bds;
ALTER TABLE public.genre SET SCHEMA bds;
ALTER TABLE public.country SET SCHEMA bds;
ALTER TABLE public.director SET SCHEMA bds;
ALTER TABLE public.actor SET SCHEMA bds;
ALTER TABLE public.user_has_favorite_genre SET SCHEMA bds;
ALTER TABLE public.user_has_favorite_director SET SCHEMA bds;
ALTER TABLE public.user_has_favorite_actor SET SCHEMA bds;
ALTER TABLE public.movie_has_country SET SCHEMA bds;
ALTER TABLE public.movie_has_genre SET SCHEMA bds;
ALTER TABLE public.movie_has_director SET SCHEMA bds;
ALTER TABLE public.movie_has_actor SET SCHEMA bds;

-- Revoke CREATE privilege on the "public" schema from the "public" role
REVOKE CREATE ON SCHEMA public FROM PUBLIC;


-- (c) explain why it might be useful to avoid public schema.
-- it is safier, provides more options for optimization, security, isolation of data.


-- 23. create two roles bds-app and bds-script in your database.
-- (a) assign for bds-app privileges to select, insert, update, and delete everything
-- in the arbitrary table in bds schema. further, set for bds-app the possibility to view
-- only certain fields (e.g., without salary from “person” or your “user” object).

CREATE ROLE bds_app;
CREATE ROLE bds_script;

GRANT SELECT, INSERT, UPDATE, DELETE ON TABLE bds."user" TO bds_app;

ALTER TABLE bds."user" ENABLE ROW LEVEL SECURITY;

CREATE POLICY restrict_fields
  ON bds."user"
  USING (NOT ('user_password'::text = current_setting('app.user_role')::text));

GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA bds TO bds_app;

GRANT SELECT ON TABLE bds.movie TO bds_script;
GRANT SELECT ON TABLE bds.movie_comments TO bds_script;

-- 24. encrypt selected database columns (using pgcrypto module).
-- • explain why you encrypted these columns.
-- • implement a select query that decrypts and reads such encrypted data.
CREATE EXTENSION IF NOT EXISTS pgcrypto SCHEMA bds;

CREATE TABLE IF NOT EXISTS bds.email_keys (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES bds.user_detail(user_id) UNIQUE,
    key TEXT NOT NULL
);

ALTER TABLE bds.user_detail
ADD COLUMN IF NOT EXISTS crypted_email BYTEA;

WITH new_keys AS (
    INSERT INTO bds.email_keys (user_id, key)
    SELECT
        user_id,
        gen_random_bytes(32) AS key
    FROM bds.user_detail WHERE user_email IS NOT NULL
    RETURNING user_id, key
)
UPDATE bds.user_detail AS ud
SET crypted_email = pgp_sym_encrypt(ud.user_email, nk.key)
FROM new_keys nk
WHERE ud.user_id = nk.user_id;

SELECT
    ud.user_id,
    ud.user_email,
    ud.crypted_email,
    pgp_sym_decrypt(ud.crypted_email, ek.key) AS decrypted_email
FROM
    bds.user_detail ud
JOIN
    bds.email_keys ek ON ud.user_id = ek.user_id;


-- 26. Specify the security hardening parameters (in production consider/add additional ones). For
-- each of these parameters explain its purpose and possible benefits
ALTER SYSTEM SET logging_collector = ON;

ALTER SYSTEM SET log_filename = 'postgresql-%Y-%m-%d %H%M%S.log';

ALTER SYSTEM SET log_file_mode = '0640';

ALTER SYSTEM SET log_truncate_on_rotation =  OFF;

ALTER SYSTEM SET log_min_messages = WARNING;

ALTER SYSTEM SET log_min_error_statement = ERROR;

ALTER SYSTEM SET log_connections = ON;

ALTER SYSTEM SET log_disconnections = ON;

ALTER SYSTEM SET log_statement = 'ddl';

SELECT pg_reload_conf();

SHOW data_directory;

