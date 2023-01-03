create table users.role
(
    id bigint not null primary key,
    name varchar(255)
);

insert into users.role (id, name) values (1, 'ROLE_USER'), (2, 'ROLE_ADMIN');

create table users.users
(
    id bigint NOT NULL AUTO_INCREMENT
        primary key,
    login varchar(255),
    password   varchar(255),
    email      varchar(255)
);

insert into users.users (login, password, email) values
     ('admin', '$2a$10$qsB0ZY1usorO8MSSzggmeuOhXWGXx.9m2JaDUWOp7vB2coZ3T39f.', 'admin@ru'),
   ('user', '$2a$10$qsB0ZY1usorO8MSSzggmeuOhXWGXx.9m2JaDUWOp7vB2coZ3T39f.', 'user@ru'),
   ('user2', '$2a$10$qsB0ZY1usorO8MSSzggmeuOhXWGXx.9m2JaDUWOp7vB2coZ3T39f.', 'user2@ru');

create table users.user_role
(
    user_id  bigint not null
          references users.users,
    role_id bigint not null
            references users.role,
    primary key (user_id, role_id)
);

insert into users.user_role (user_id, role_id) VALUES  (1, 1),(1, 2), (2, 1), (3, 1);

