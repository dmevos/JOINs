/*скрипт, который будет возвращать из таблиц поля product_name
  для пользователей с именем alexey независимо от регистра ввода имени.
*/

select product_name from osipov_schema.customers
left join orders o on customers.id = o.customer_id
where name like 'alexey'