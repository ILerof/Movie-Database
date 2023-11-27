INSERT INTO "user"(user_nickname, user_password) VALUES ('pabadm', 'my_password');
INSERT INTO "user"(user_nickname, user_password) VALUES ('lohunV', 'my_password');
INSERT INTO "user"(user_nickname, user_password) VALUES ('nuah1946', 'super-safe-password');
INSERT INTO "user"(user_nickname, user_password) VALUES ('piccolo219', '12345678');
INSERT INTO "user"(user_nickname, user_password) VALUES ('_strawberry_lover_', 'I-love-strawberries');
INSERT INTO "user"(user_nickname, user_password) VALUES ('guardian', 'auto-generated-password');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key', 'forgotten-password');
INSERT INTO "user"(user_nickname, user_password) VALUES ('user', 'password');
INSERT INTO "user"(user_nickname, user_password) VALUES ('pizzza_guy', 'pizza-password');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_boxer', 'boxxxxxx');
INSERT INTO "user"(user_nickname, user_password) VALUES ('surname_name', 'name-surname');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key2', 'forgotten-password2');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key3', 'forgotten-password3');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key4', 'forgotten-password4');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key5', 'forgotten-password5');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key6', 'forgotten-password6');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key7', 'forgotten-password7');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key8', 'forgotten-password8');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key9', 'forgotten-password9');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key10', 'forgotten-password10');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key11', 'forgotten-password11');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key12', 'forgotten-password12');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key13', 'forgotten-password13');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key14', 'forgotten-password14');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key15', 'forgotten-password15');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key16', 'forgotten-password16');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key17', 'forgotten-password17');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key18', 'forgotten-password18');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key19', 'forgotten-password19');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key20', 'forgotten-password20');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key21', 'forgotten-password21');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key22', 'forgotten-password22');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key23', 'forgotten-password23');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key24', 'forgotten-password24');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key25', 'forgotten-password25');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key26', 'forgotten-password26');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key27', 'forgotten-password27');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key28', 'forgotten-password28');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key29', 'forgotten-password29');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key30', 'forgotten-password30');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key31', 'forgotten-password31');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key32', 'forgotten-password32');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key33', 'forgotten-password33');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key34', 'forgotten-password34');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key35', 'forgotten-password35');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key36', 'forgotten-password36');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key37', 'forgotten-password37');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key38', 'forgotten-password38');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key39', 'forgotten-password39');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key40', 'forgotten-password40');
INSERT INTO "user"(user_nickname, user_password) VALUES ('the_key41', 'forgotten-password41');

INSERT INTO user_detail(user_id, user_email, user_picture) VALUES (1, '241004@vut.cz', 'my photo');
INSERT INTO user_detail(user_id, user_email, user_picture) VALUES (2, '241069@vut.cz', 'my photo');
INSERT INTO user_detail(user_id, user_email) VALUES (4, 'piccolist@gmail.com');
INSERT INTO user_detail(user_id, user_email) VALUES (9, 'true_pizza_lover@gmail.com');
INSERT INTO user_detail(user_id, user_email) VALUES (11, 'boring@gmail.com');
INSERT INTO user_detail(user_id, user_picture) VALUES ( 5, 'sweet photo');

INSERT INTO movie(movie_name,  movie_release_date, movie_budget) VALUES ('pulp fiction', '1994-04-21', 8500000);
INSERT INTO movie(movie_name,  movie_release_date) VALUES ('the dictator', '2012-04-16');
INSERT INTO movie(movie_name,  movie_release_date) VALUES ('the truman show', '1998-05-16');
INSERT INTO movie(movie_name,  movie_release_date) VALUES ('parasite', '2019-04-30');
INSERT INTO movie(movie_name,  movie_release_date) VALUES ('lady vengeance', '2005-06-29');

INSERT INTO director(director_first_name, director_last_name, director_birthday) VALUES ('Quentin', 'Tarantino', '1963-02-27');
INSERT INTO director(director_first_name, director_last_name, director_birthday) VALUES ('Larry', 'Charles', '1956-11-21');
INSERT INTO director(director_first_name, director_last_name, director_birthday) VALUES ('Peter', 'Wier', '1944-07-21');
INSERT INTO director(director_first_name, director_last_name, director_birthday) VALUES ('Bong', 'Joon-ho', '1969-08-14');
INSERT INTO director(director_first_name, director_last_name, director_birthday) VALUES ('Park', 'Chan-wook', '1963-07-23');

INSERT INTO movie_has_director(movie_id, director_id) VALUES (1, 1);
INSERT INTO movie_has_director(movie_id, director_id) VALUES (2, 2);
INSERT INTO movie_has_director(movie_id, director_id) VALUES (3, 3);
INSERT INTO movie_has_director(movie_id, director_id) VALUES (4, 4);
INSERT INTO movie_has_director(movie_id, director_id) VALUES (5, 5);

INSERT INTO actor(actor_first_name, actor_last_name, actor_birthday) VALUES ('Uma', 'Turman', '2000-01-01');
INSERT INTO actor(actor_first_name, actor_last_name, actor_birthday) VALUES ('Sacha', 'Baron Cohen', '2000-01-01');
INSERT INTO actor(actor_first_name, actor_last_name, actor_birthday) VALUES ('Jim', 'Carrey', '2000-01-01');
INSERT INTO actor(actor_first_name, actor_last_name, actor_birthday) VALUES ('Song', 'Kang-ho', '2000-01-01');
INSERT INTO actor(actor_first_name, actor_last_name, actor_birthday) VALUES ('Lee', 'Yeong-ae', '2000-01-01');
INSERT INTO actor(actor_first_name, actor_last_name, actor_birthday) VALUES ('test', 'actor', '2000-01-01');

INSERT INTO movie_has_actor(movie_id, actor_id) VALUES (1, 1);
INSERT INTO movie_has_actor(movie_id, actor_id) VALUES (2, 2);
INSERT INTO movie_has_actor(movie_id, actor_id) VALUES (3, 3);
INSERT INTO movie_has_actor(movie_id, actor_id) VALUES (4, 4);
INSERT INTO movie_has_actor(movie_id, actor_id) VALUES (5, 5);
INSERT INTO movie_has_actor(movie_id, actor_id) VALUES (5, 6);

INSERT INTO country(country_name) VALUES ('USA');
INSERT INTO country(country_name) VALUES ('South Korea');
INSERT INTO country(country_name) VALUES ('Czech Republic');
INSERT INTO country(country_name) VALUES ('New Zealand');
INSERT INTO country(country_name) VALUES ('Britain');
INSERT INTO country(country_name) VALUES ('Zimbabwe');
INSERT INTO country(country_name) VALUES ('Japan');
INSERT INTO country(country_name) VALUES ('Vietnam');
INSERT INTO country(country_name) VALUES ('Ukraine');
INSERT INTO country(country_name) VALUES ('USSR');
INSERT INTO country(country_name) VALUES ('Slovakia');
INSERT INTO country(country_name) VALUES ('Croatia');
INSERT INTO country(country_name) VALUES ('Nigeria');
INSERT INTO country(country_name) VALUES ('Indie');
INSERT INTO country(country_name) VALUES ('Mexico');
INSERT INTO country(country_name) VALUES ('Brazil');
INSERT INTO country(country_name) VALUES ('Spain');
INSERT INTO country(country_name) VALUES ('Portugal');
INSERT INTO country(country_name) VALUES ('Netherlands');
INSERT INTO country(country_name) VALUES ('Germany');
INSERT INTO country(country_name) VALUES ('Belgium');
INSERT INTO country(country_name) VALUES ('North Korea');
INSERT INTO country(country_name) VALUES ('Taiwan');
INSERT INTO country(country_name) VALUES ('China');
INSERT INTO country(country_name) VALUES ('Australia');
INSERT INTO country(country_name) VALUES ('Belarus');
INSERT INTO country(country_name) VALUES ('Sweden');
INSERT INTO country(country_name) VALUES ('Monaco');
INSERT INTO country(country_name) VALUES ('Austria');
INSERT INTO country(country_name) VALUES ('Italy');
INSERT INTO country(country_name) VALUES ('France');
INSERT INTO country(country_name) VALUES ('Armenia');
INSERT INTO country(country_name) VALUES ('Kazakhstan');
INSERT INTO country(country_name) VALUES ('Canada');
INSERT INTO country(country_name) VALUES ('Iceland');
INSERT INTO country(country_name) VALUES ('Ireland');
INSERT INTO country(country_name) VALUES ('Finland');
INSERT INTO country(country_name) VALUES ('Thailand');
INSERT INTO country(country_name) VALUES ('Arabic Emirates');
INSERT INTO country(country_name) VALUES ('Egypt');
INSERT INTO country(country_name) VALUES ('Turkey');
INSERT INTO country(country_name) VALUES ('Bulgaria');
INSERT INTO country(country_name) VALUES ('Estonia');
INSERT INTO country(country_name) VALUES ('Lithuania');
INSERT INTO country(country_name) VALUES ('Hungary');
INSERT INTO country(country_name) VALUES ('Israel');
INSERT INTO country(country_name) VALUES ('Gabon');
INSERT INTO country(country_name) VALUES ('Ghana');
INSERT INTO country(country_name) VALUES ('Cyprus');
INSERT INTO country(country_name) VALUES ('Columbia');
INSERT INTO country(country_name) VALUES ('Cuba');

INSERT INTO  movie_has_country(movie_id, country_id) VALUES (1, 1);
INSERT INTO  movie_has_country(movie_id, country_id) VALUES (2, 1);
INSERT INTO  movie_has_country(movie_id, country_id) VALUES (3, 1);
INSERT INTO  movie_has_country(movie_id, country_id) VALUES (4, 2);
INSERT INTO  movie_has_country(movie_id, country_id) VALUES (5, 2);

INSERT INTO genre(genre_name) VALUES ('action');
INSERT INTO genre(genre_name) VALUES ('drama');
INSERT INTO genre(genre_name) VALUES ('comedy');
INSERT INTO genre(genre_name) VALUES ('horror');
INSERT INTO genre(genre_name) VALUES ('thriller');

INSERT INTO movie_has_genre(movie_id, genre_id) VALUES (1, 3);
INSERT INTO movie_has_genre(movie_id, genre_id) VALUES (1, 5);
INSERT INTO movie_has_genre(movie_id, genre_id) VALUES (2, 3);
INSERT INTO movie_has_genre(movie_id, genre_id) VALUES (3, 2);
INSERT INTO movie_has_genre(movie_id, genre_id) VALUES (4, 2);
INSERT INTO movie_has_genre(movie_id, genre_id) VALUES (5, 2);

INSERT INTO movie_comments(user_id, movie_id, comment_text, comment_publish) VALUES (2, 1, 'just film', '2020-01-01');
INSERT INTO movie_comments(user_id, movie_id, comment_text, comment_publish) VALUES (4, 1, 'so bad', '2020-01-01');
INSERT INTO movie_comments(user_id, movie_id, comment_text, comment_publish) VALUES (10, 5, 'i liked it', '2020-01-01');
INSERT INTO movie_comments(user_id, movie_id, comment_text, comment_publish) VALUES (7, 3, 'so boring', '2020-01-01');
INSERT INTO movie_comments(user_id, movie_id, comment_text, comment_publish) VALUES (2, 3, 'give me back my time', '2020-01-01');

INSERT INTO user_has_wished_movie(user_id, movie_id) VALUES (2, 1);
INSERT INTO user_has_wished_movie(user_id, movie_id) VALUES (3, 1);
INSERT INTO user_has_wished_movie(user_id, movie_id) VALUES (4, 3);
INSERT INTO user_has_wished_movie(user_id, movie_id) VALUES (7, 5);
INSERT INTO user_has_wished_movie(user_id, movie_id) VALUES (5, 2);

INSERT INTO user_has_viewed_movie(user_id, movie_id, is_movie_favorite) VALUES (2, 3, 0);
INSERT INTO user_has_viewed_movie(user_id, movie_id, is_movie_favorite) VALUES (4, 2, 1);
INSERT INTO user_has_viewed_movie(user_id, movie_id, is_movie_favorite) VALUES (8, 5, 1);
INSERT INTO user_has_viewed_movie(user_id, movie_id, is_movie_favorite) VALUES (10, 4, 0);
INSERT INTO user_has_viewed_movie(user_id, movie_id, is_movie_favorite) VALUES (10, 3, 0);

INSERT INTO user_has_favorite_genre(user_id, genre_id) VALUES (5, 2);
INSERT INTO user_has_favorite_genre(user_id, genre_id) VALUES (5, 1);
INSERT INTO user_has_favorite_genre(user_id, genre_id) VALUES (3, 4);
INSERT INTO user_has_favorite_genre(user_id, genre_id) VALUES (3, 2);
INSERT INTO user_has_favorite_genre(user_id, genre_id) VALUES (2, 5);

INSERT INTO user_has_favorite_director(user_id, director_id) VALUES (5, 2);
INSERT INTO user_has_favorite_director(user_id, director_id) VALUES (3, 1);
INSERT INTO user_has_favorite_director(user_id, director_id) VALUES (10, 3);
INSERT INTO user_has_favorite_director(user_id, director_id) VALUES (8, 4);
INSERT INTO user_has_favorite_director(user_id, director_id) VALUES (8, 3);

INSERT INTO user_has_favorite_actor(user_id, actor_id) VALUES (3, 2);
INSERT INTO user_has_favorite_actor(user_id, actor_id) VALUES (3, 1);
INSERT INTO user_has_favorite_actor(user_id, actor_id) VALUES (4, 3);
INSERT INTO user_has_favorite_actor(user_id, actor_id) VALUES (7, 4);
INSERT INTO user_has_favorite_actor(user_id, actor_id) VALUES (10, 3);







