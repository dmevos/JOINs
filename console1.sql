/*скрипт создания таблицы с параметрами:
название таблицы — CUSTOMERS;
содержит в себе 5 столбцов — id, name, surname, age, phone_number;
поле id будет первичным ключом, который инкрементируется каждый раз при создании пользователя.
*/
create schema osipov_schema;

create table osipov_schema.customers
(
    id int primary key auto_increment,
    name           varchar(30) not null,
    surname        varchar(50) not null,
    age            smallint    not null check ( age > 0 and age < 130 ),
    phone_number   varchar(11)
);

# delete from osipov_schema.customers;

insert into osipov_schema.customers (name, surname, age, phone_number)
values ('Alexey', 'Petrov', 26, 89031111111);

insert into osipov_schema.customers (name, surname, age, phone_number)
values ('alexey', 'Vasin', 27, 89032222222);

insert into osipov_schema.customers (name, surname, age, phone_number)
values ('ALEXEY', 'Ivanov', 28, 89033333333);

insert into osipov_schema.customers (name, surname, age, phone_number)
values ('Ivan', 'Kolin', 29, 89034444444);

insert into osipov_schema.customers (name, surname, age, phone_number)
values ('Denis', 'Zhukov', 30, 89035555555);

insert into osipov_schema.customers (name, surname, age, phone_number)
values ('Onufriy', 'Psaki', 31, 89036666666);