create table genre
(
    uuid     char(36)     not null
        primary key,
    genre_name varchar(150) not null,
    constraint genre_genre_name_uindex
        unique (genre_name)
);

create table author
(
    uuid       char(36)     not null
        primary key,
    first_name varchar(255) null,
    last_name  varchar(255) not null,
    birth_year int(4)       null,
    country    varchar(255) null
);

create table if not exists book
(
    uuid char(36) not null
        primary key,
    title varchar(255) not null,
    sub_title varchar(255) null,
    isbn varchar(13) null,
    publisher varchar(255) null,
    publish_year int null,
    available_for_removal_ind char default 'Y' not null,
    synopsis text null,
    image_file text null,
    genre_uuid char(36) not null,
    constraint book_genre_uuid_fk
        foreign key (genre_uuid) references genre (uuid)
);

create index book_genre_uuid_index
    on book (genre_uuid);

create index book_publish_year_index
    on book (publish_year);

create index book_title_index
    on book (title);



create table book_author
(
    uuid        char(36) not null
        primary key,
    book_uuid   char(36) not null,
    author_uuid char(36) not null,
    constraint book_author_author_uuid_fk
        foreign key (author_uuid) references author (uuid),
    constraint book_author_book_uuid_fk
        foreign key (book_uuid) references book (uuid)
);

create index book_author_author_uuid_index
    on book_author (author_uuid);

create index book_author_book_uuid_index
    on book_author (book_uuid);

create table user
(
    uuid            char(36)                    not null
        primary key,
    first_name      varchar(255)                not null,
    last_nme        varchar(255)                not null,
    email_address   varchar(255)                not null,
    phone_number    char(14)                    null,
    txt_msg_ind     char         default 'Y'    not null,
    last_login_date datetime                    null,
    active_ind      char         default 'Y'    not null,
    user_role       varchar(255) default 'USER' not null,
    password        varchar(255)                not null,
    constraint user_email_address_uindex
        unique (email_address)
);

create table loan
(
    uuid        char(36) not null
        primary key,
    user_uuid   char(36) not null,
    book_uuid   char(36) not null,
    borrow_date date     not null,
    due_date    date     not null,
    return_date date     null,
    constraint loan_book_uuid_fk
        foreign key (book_uuid) references book (uuid),
    constraint loan_user_uuid_fk
        foreign key (user_uuid) references user (uuid)
);

create index loan_book_uuid_index
    on loan (book_uuid);

create index loan_borrow_date_index
    on loan (borrow_date);

create index loan_due_date_index
    on loan (due_date);

create index loan_return_date_index
    on loan (return_date);

create index loan_user_uuid_index
    on loan (user_uuid);

create index user_user_role_index
    on user (user_role);

