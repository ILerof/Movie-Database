create table if not exists "user"
(
    user_id       serial
        constraint user_pk
            primary key,
    user_nickname varchar(20) not null
        constraint user_nickname_key
            unique,
    user_password varchar(45) not null
);

alter table "user"
    owner to postgres;

create table if not exists movie
(
    movie_id           serial
        constraint movie_pk
            primary key,
    movie_name         varchar(45) not null,
    movie_description  varchar(255),
    movie_release_date date        not null,
    movie_budget decimal(10,2)
);

alter table movie
    owner to postgres;

create table if not exists user_has_wished_movie
(
    id       serial
        constraint user_has_wished_movie_pk
            primary key,
    user_id  integer not null
        constraint user_has_wished_movie__user_id_fk
            references "user",
    movie_id integer not null
        constraint user_has_wished_movie__movie_id_fk
            references movie
);

alter table user_has_wished_movie
    owner to postgres;

create table if not exists movie_comments
(
    comment_id      serial
        constraint movie_comments_pk
            primary key,
    user_id         integer      not null
        constraint movie_comments__user_fk
            references "user",
    movie_id        integer      not null
        constraint movie_comments__movie_fk
            references movie,
    comment_text    varchar(255) not null,
    comment_publish timestamp    not null
);

alter table movie_comments
    owner to postgres;

create table if not exists user_has_viewed_movie
(
    id                serial
        constraint user_has_viewed_movie_pk
            primary key,
    movie_id          integer not null
        constraint user_has_viewed_movie__movie_fk
            references movie,
    user_id           integer not null
        constraint user_has_viewed_movie__user_fk
            references "user",
    is_movie_favorite boolean not null
);

alter table user_has_viewed_movie
    owner to postgres;

create table if not exists user_detail
(
    user_id      integer not null
        constraint user_detail_pk
            primary key
        constraint user_detail___fk
            references "user",
    user_email   varchar(45),
    user_picture varchar(255)
);

alter table user_detail
    owner to postgres;

create table if not exists genre
(
    genre_id          serial
        constraint genre_pk
            primary key,
    genre_name        varchar(45) not null,
    genre_description varchar(255)
);

alter table genre
    owner to postgres;

create table if not exists country
(
    country_id          serial
        constraint country_pk
            primary key,
    country_name        varchar(20) not null,
    country_flag        varchar(255),
    country_description varchar(255)
);

alter table country
    owner to postgres;

create table if not exists director
(
    director_id          serial
        constraint director_pk
            primary key,
    director_first_name  varchar(45) not null,
    director_last_name   varchar(45) not null,
    director_birthday    date        not null,
    director_death       date,
    director_picture     varchar(255),
    director_description varchar(255)
);

alter table director
    owner to postgres;

create table if not exists actor
(
    actor_id          serial
        constraint actor_pk
            primary key,
    actor_first_name  varchar(45) not null,
    actor_last_name   varchar(45) not null,
    actor_birthday    date        not null,
    actor_death       date,
    actor_picture     varchar(255),
    actor_description varchar(255)
);

alter table actor
    owner to postgres;

create table if not exists user_has_favorite_genre
(
    id       serial
        constraint user_has_favorite_genre_pk
            primary key,
    user_id  integer not null
        constraint user_has_favorite_genre__user_fk
            references "user",
    genre_id integer not null
        constraint user_has_favorite_genre__genre_fk
            references genre
);

alter table user_has_favorite_genre
    owner to postgres;

create table if not exists user_has_favorite_director
(
    id          serial
        constraint user_has_favorite_director_pk
            primary key,
    user_id     integer not null
        constraint user_has_favorite_director__user_fk
            references "user",
    director_id integer not null
        constraint user_has_favorite_director__director_fk
            references director
);

alter table user_has_favorite_director
    owner to postgres;

create table if not exists user_has_favorite_actor
(
    id          serial
        constraint user_has_favorite_actor_pk
            primary key,
    user_id     integer not null
        constraint user_has_favorite_actor__user_fk
            references "user",
    actor_id integer not null
        constraint user_has_favorite_actor__actor_fk
            references actor
);

alter table user_has_favorite_actor
    owner to postgres;

create table if not exists movie_has_country
(
    id         serial
        constraint user_movie_has_country_pk
            primary key,
    movie_id   integer not null
        constraint movie_has_country__movie_fk
            references movie,
    country_id integer not null
        constraint movie_has_country__country_fk
            references country
);

alter table movie_has_country
    owner to postgres;

create table if not exists movie_has_genre
(
    id       serial
        constraint user_movie_has_genre_pk
            primary key,
    movie_id integer not null
        constraint movie_has_genre__movie_fk
            references movie,
    genre_id integer not null
        constraint movie_has_genre__genre_fk
            references genre
);

alter table movie_has_genre
    owner to postgres;

create table if not exists movie_has_director
(
    id          serial
        constraint user_movie_has_director_pk
            primary key,
    movie_id    integer not null
        constraint movie_has_director__movie_fk
            references movie,
    director_id integer not null
        constraint movie_has_director__director_fk
            references director
);

alter table movie_has_director
    owner to postgres;

create table if not exists movie_has_actor
(
    id       serial
        constraint user_movie_has_actor_pk
            primary key,
    movie_id integer not null
        constraint movie_has_actor__movie_fk
            references movie,
    actor_id integer not null
        constraint movie_has_actor__actor_fk
            references actor
);

alter table movie_has_actor
    owner to postgres;

