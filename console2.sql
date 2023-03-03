/*скрипт создания таблицы с параметрами:
название таблицы — ORDERS;
содержит в себе 4 столбца — id, date, customer_id,product_name, amount;
поле id будет первичным ключом, который инкрементируется каждый раз при создании заказа;
внешним ключом на поле id таблицы пользователей будет customer_id.*/

create table osipov_schema.orders
(
    id int primary key auto_increment,
    date date,
    customer_id int,
    product_name varchar(50),
    amount decimal(8,2),
    foreign key (customer_id) references customers(id)
);

# delete from osipov_schema.orders;

insert into osipov_schema.orders (date, customer_id, product_name, amount)
values ('2023-01-01', 1, 'Валенки', 123.22);
insert into osipov_schema.orders (date, customer_id, product_name, amount)
values ('2023-01-02', 1, 'Фуфайка', 222.33);
insert into osipov_schema.orders (date, customer_id, product_name, amount)
values ('2023-01-02', 1, 'Шапка', 23.44);
insert into osipov_schema.orders (date, customer_id, product_name, amount)
values ('2023-01-03', 2, 'Ноутбук', 500.13);
insert into osipov_schema.orders (date, customer_id, product_name, amount)
values ('2023-01-03', 2, 'Наушники', 10.10);
insert into osipov_schema.orders (date, customer_id, product_name, amount)
values ('2023-01-03', 3, 'Яблочный сок', 5);
insert into osipov_schema.orders (date, customer_id, product_name, amount)
values ('2023-01-03', 4, 'Билет в театр', 15.90);
insert into osipov_schema.orders (date, customer_id, product_name, amount)
values ('2023-01-03', 5, 'Перфоратор', 85.99);
insert into osipov_schema.orders (date, customer_id, product_name, amount)
values ('2023-01-03', 6, 'Англо-Русский словарь', 1000.65);