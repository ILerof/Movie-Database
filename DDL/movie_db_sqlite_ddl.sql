create table actor
(
    actor_id          INTEGER
        constraint actor_pk
            primary key autoincrement,
    actor_first_name  varchar(45) not null,
    actor_last_name   varchar(45) not null,
    actor_birthday    TEXT        not null,
    actor_death       TEXT,
    actor_picture     varchar(255),
    actor_description varchar(255)
);

create table country
(
    country_id          INTEGER
        constraint country_pk
            primary key autoincrement,
    country_name        varchar(20) not null,
    country_flag        varchar(255),
    country_description varchar(255)
);

create table director
(
    director_id          INTEGER
        constraint director_pk
            primary key autoincrement,
    director_first_name  varchar(45) not null,
    director_last_name   varchar(45) not null,
    director_birthday    TEXT        not null,
    director_death       TEXT,
    director_picture     varchar(255),
    director_description varchar(255)
);

create table genre
(
    genre_id          INTEGER
        constraint genre_pk
            primary key autoincrement,
    genre_name        varchar(45) not null,
    genre_description varchar(255)
);

create table movie
(
    movie_id           INTEGER
        constraint movie_pk
            primary key autoincrement,
    movie_name         varchar(45) not null,
    movie_description  varchar(255),
    movie_release_date TEXT        not null,
    movie_budget       decimal(10, 2)
);

create table movie_has_actor
(
    id       INTEGER
        constraint user_movie_has_actor_pk
            primary key autoincrement,
    movie_id INTEGER not null
        constraint movie_has_actor__movie_fk
            references movie,
    actor_id INTEGER not null
        constraint movie_has_actor__actor_fk
            references actor
);

create table movie_has_country
(
    id         INTEGER
        constraint user_movie_has_country_pk
            primary key autoincrement,
    movie_id   INTEGER not null
        constraint movie_has_country__movie_fk
            references movie,
    country_id INTEGER not null
        constraint movie_has_country__country_fk
            references country
);

create table movie_has_director
(
    id          INTEGER
        constraint user_movie_has_director_pk
            primary key autoincrement,
    movie_id    INTEGER not null
        constraint movie_has_director__movie_fk
            references movie,
    director_id INTEGER not null
        constraint movie_has_director__director_fk
            references director
);

create table movie_has_genre
(
    id       INTEGER
        constraint user_movie_has_genre_pk
            primary key autoincrement,
    movie_id INTEGER not null
        constraint movie_has_genre__movie_fk
            references movie,
    genre_id INTEGER not null
        constraint movie_has_genre__genre_fk
            references genre
);

-- create table sqlite_master
-- (
--     type     TEXT,
--     name     TEXT,
--     tbl_name TEXT,
--     rootpage INT,
--     sql      TEXT
-- );
--
-- create table sqlite_sequence
-- (
--     name,
--     seq
-- );

create table user
(
    user_id       INTEGER
        constraint user_pk
            primary key autoincrement,
    user_nickname varchar(20) not null
        unique,
    user_password varchar(45) not null
);

create table movie_comments
(
    comment_id      INTEGER
        constraint movie_comments_pk
            primary key autoincrement,
    user_id         INTEGER      not null
        constraint movie_comments__user_fk
            references user,
    movie_id        INTEGER      not null
        constraint movie_comments__movie_fk
            references movie,
    comment_text    varchar(255) not null,
    comment_publish TEXT         not null
);

create table user_detail
(
    user_id      INTEGER not null
        constraint user_detail_pk
            primary key
        constraint user_detail___fk
            references user,
    user_email   varchar(45),
    user_picture varchar(255)
);

create table user_has_favorite_actor
(
    id       INTEGER
        constraint user_has_favorite_actor_pk
            primary key autoincrement,
    user_id  INTEGER not null
        constraint user_has_favorite_actor__user_fk
            references user,
    actor_id INTEGER not null
        constraint user_has_favorite_actor__actor_fk
            references actor
);

create table user_has_favorite_director
(
    id          INTEGER
        constraint user_has_favorite_director_pk
            primary key autoincrement,
    user_id     INTEGER not null
        constraint user_has_favorite_director__user_fk
            references user,
    director_id INTEGER not null
        constraint user_has_favorite_director__director_fk
            references director
);

create table user_has_favorite_genre
(
    id       INTEGER
        constraint user_has_favorite_genre_pk
            primary key autoincrement,
    user_id  INTEGER not null
        constraint user_has_favorite_genre__user_fk
            references user,
    genre_id INTEGER not null
        constraint user_has_favorite_genre__genre_fk
            references genre
);

create table user_has_viewed_movie
(
    id                INTEGER
        constraint user_has_viewed_movie_pk
            primary key autoincrement,
    movie_id          INTEGER not null
        constraint user_has_viewed_movie__movie_fk
            references movie,
    user_id           INTEGER not null
        constraint user_has_viewed_movie__user_fk
            references user,
    is_movie_favorite boolean not null
);

create table user_has_wished_movie
(
    id       INTEGER
        constraint user_has_wished_movie_pk
            primary key autoincrement,
    user_id  INTEGER not null
        constraint user_has_wished_movie__user_id_fk
            references user,
    movie_id INTEGER not null
        constraint user_has_wished_movie__movie_id_fk
            references movie
);

