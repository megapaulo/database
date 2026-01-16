-- create table admins
CREATE TABLE admins (
    id uuid NOT NULL,
    first name varchar(255) NOT NULL,
    last name varchar(255) NOT NULL,
    role varchar(225)NOT NULL,
    PRIMARY KEY (id)
);


-- create table approvallogs
CREATE TABLE approvallogs (
    id uuid NOT NULL,
    order id int NOT NULL,
    admin id int NOT NULL,
    action enum('approved', 'declined')
    PRIMARY KEY (id)
);

-- create table categories
CREATE TABLE categories (
    id uuid NOT NULL,
    name varchar(255) NOT NULL,
    description varchar(255) NOT NULL,
    created at varchar(225)NOT NULL,
    updated at varchar (225) NOT NULL,
    PRIMARY KEY (id)
);

-- create table orderitems
CREATE TABLE orderitems (
    id uuid int NOT NULL,
    orderid int NOT NULL,
    product id int NOT NULL,
    price at purchase decimal,
    quantity int NOT NULL,
    PRIMARY KEY (id)
);


-- create table orders
CREATE TABLE orders (
    id uuid int NOT NULL,
    userid int NOT NULL,
    created_at datetime DEFAULT CURRENT_TIMESTAMP,
    status enum('complete','incomplete')
    approvedby varchar(225) NOT NULL
    PRIMARY KEY (id)
);

-- create table products
CREATE TABLE products (
    id uuid int NOT NULL,
    name varchar (225) NOT NULL,
    price int NOT NULL,
    description varchar  (225) NOT NULL,
    category int NOT NULL,
    size enum ('small', 'meduim','large'),
    created_at datetime DEFAULT CURRENT_TIMESTAMP,
    updated_at  datetime DEFAULT CURRENT_TIMESTAMP,
    created by varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

-- create table users
CREATE TABLE users (
    id uuid int NOT NULL,
    name varchar(225) NOT NULL,
    email varchar (225) NOT NULL,
    password varchar (255) NOT NULL,
    created_at datetime DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);


-- INSERT INTO table1 
-- (field1, field2) 
-- VALUES (value1, value2);


-- insert into admins
insert into admins 
(id, firstname, lastname, role) 
values (1, 'olabisi', 'oladipo', 'admin')


-- insert into approvallogs
insert into approvallogs 
(id, order_id, admin_id, action) 
values (1, 1 , 2, 'approved')

-- insert into categories
insert into categories 
(id, name, description, created_at, updated_at) 
values (1, 'sneakers' , 'white nike sneakers for adults', 'warehouse 4', 'stand 9')

-- insert into orderitems
insert into orderitems 
(id, order_id, product_id,price_at_purchase, quantity) 
values (1, 1 , 211,25, 6)

-- insert into orders
insert into orders 
(id, user_id, created_at, status, approvedby) 
values (1, 23 , 2022-02-09 00:00:00, complete, olabisi)


-- insert into products
insert into products 
(id, name, price, description, category, size, created_at, updated_at, createdby) 
values (1, loafers , 211, brown adult loafers, 45, small, 2023-01-02 00:00:00, 2024-02-04 00:00:00, olabisi)

-- insert into users
insert into users 
(id, name, email, password,created_at) 
values (1,paul , megap@gmail.com,sklfsks, 1989-03-09 00:00:00)

-- select all admins
select * from admins

-- select all approvallogs
select * from approvallogs

-- select all categories
select * from categories

-- select all orderitems
select * from orderitems

-- select all orders
select * from orders

-- select all products
select * from products

-- select all  users
select * from users

-- update a product
update product 
set name = 'Tan-brown loafers' 
where id = 1

-- update order
update order 
set status= 'incomplete' 
where user-id = 23

-- delete a orderitem
delete from orderitem
where price_at_purchase = 11