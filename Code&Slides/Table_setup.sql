if not exists(select* from sys.databases where name ='TIFFANIA')
create database TIFFANIA
GO

use TIFFANIA
GO

--Down
if exists(select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    where CONSTRAINT_NAME='fk_transaction_item_transaction_id')
    alter table transaction_item drop constraint fk_transaction_item_transaction_id
if exists(select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    where CONSTRAINT_NAME='pk_transaction_id_item_id')
    alter table transaction_item drop constraint pk_transaction_id_item_id
drop table if exists transaction_item
-------------------
if exists(select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    where CONSTRAINT_NAME='fk_transaction_transaction_sales_assistant')
    alter table transactions drop constraint fk_transaction_transaction_sales_assistant
if exists(select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    where CONSTRAINT_NAME='fk_transaction_transaction_customer')
    alter table transactions drop constraint fk_transaction_transaction_customer
if exists(select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    where CONSTRAINT_NAME='fk_transactions_transation_location')
    alter table transactions drop constraint fk_transactions_transation_location
if exists(select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    where CONSTRAINT_NAME='fk_transactions_transation_type')
    alter table transactions drop constraint fk_transactions_transation_type
drop table if exists transactions
-------------------
drop table if exists transaction_type
-------------------
if exists(select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    where CONSTRAINT_NAME='fk_employee_working_location')
    alter table employees drop constraint fk_employee_working_location
drop table if exists employees
-------------------
if exists(select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    where CONSTRAINT_NAME='fk_store_store_type')
    alter table stores drop constraint fk_store_store_type
drop table if exists stores
-------------------
drop table if exists store_type
-------------------
if exists(select * from INFORMATION_SCHEMA.TABLE_CONSTRAINTS
    where CONSTRAINT_NAME='fk_customer_customer_title')
    alter table customers drop constraint fk_customer_customer_title
drop table if exists customers
-------------------
drop table if exists customer_title
-------------------
drop table if exists designers
-------------------
drop table if exists collections
-------------------
drop table if exists items

--UP Metadata
-- table items
create table items(
    item_id int IDENTITY not null,
    item_name VARCHAR(100) not null,
    item_department  VARCHAR(20) not null,
    item_category VARCHAR(20) not null,
    item_collection int null,
    item_price money not null,
    item_materials VARCHAR(20) null,
    item_gemstone VARCHAR(20) null,
    item_carat_weight FLOAT null,
    item_description VARCHAR(500) null,
    constraint pk_item_id primary key(item_id),
    constraint ck_items_item_valid_prices check(item_price > = 0)
)
-- table collections
create table collections(
    collection_id int IDENTITY not null,
    collection_name VARCHAR(50) not null,
    collection_designer VARCHAR(20) not null,
    collection_date_release  date not null,
    collection_description VARCHAR(150) null,
    constraint pk_collections_collection_id primary key(collection_id)
)

-- table designers
CREATE table designers(
    designer_id int IDENTITY not null,
    designer_firstname VARCHAR(50) not null,
    designer_lastname  VARCHAR(50) not null,
    designer_email VARCHAR(50) not null,
    designer_home_country VARCHAR(50) not null,
    designer_collection VARCHAR(50)  null,
    constraint u_designers_designer_email unique (designer_email),
    constraint pk_designers_designer_id primary key(designer_id)
)


-- table customer_title
create table  customer_title(
    customer_title_id int identity not null,
    customer_title_name varchar(50) not null,
    constraint pk_customer_title_id primary key (customer_title_id),
    constraint u_customer_title_name unique (customer_title_name)
)

-- table customers
create table customers(
    customer_id int identity not null,
    customer_firstname varchar(50) not null,
    customer_lastname varchar(50) not null,
    customer_email varchar(50) not null,
    customer_birthday date null,
    customer_phone char(10) not null,
    customer_title int not null,
    customer_country varchar(50) null,
    customer_state varchar(50) null,
    customer_city varchar(50) null,
    customer_zipcode varchar(50) null,
    customer_address varchar(50) null,
    constraint pk_customer_customer_id primary key (customer_id),
    constraint u_customer_customer_email unique (customer_email)
)
alter table customers
    add constraint fk_customer_customer_title foreign key(customer_title)
        references customer_title(customer_title_id)



-- table store_type
create table store_type(
    store_type_id int identity not null,
    store_type_name varchar(50) not null,
    constraint pk_store_type_id primary key (store_type_id),
    constraint u_store_type_name unique (store_type_name)
)

-- table stores
create table stores(
    store_id int identity not null,
    store_type int not null,
    store_country varchar(50) not null,
    store_state varchar(50) not null,
    store_city varchar(50) not null,
    store_address varchar(50) not null,
    store_zipcode varchar(10) null,
    store_contact_number char(10) null,
    constraint pk_store_store_id primary key (store_id)
)
alter table stores
    add constraint fk_store_store_type foreign key(store_type)
        references store_type(store_type_id)

-- table employees
create table employees(
    employee_id int identity not null,
    employee_firstname varchar(50) not null,
    employee_lastname varchar(50) not null,
    employee_email varchar(50) not null,
    employee_phone char(10) not null,
    employee_job_title varchar(50) null,
    employee_working_location int not null,
    constraint pk_employee_employee_id primary key (employee_id),
    constraint u_employee_employee_email unique (employee_email)
)
alter table employees
    add constraint fk_employee_working_location foreign key(employee_working_location)
        references stores(store_id)

-- table transactions_type
create table  transaction_type(
    transaction_type_id int identity not null,
    transaction_type_name varchar(50) not null,
    constraint pk_transaction_type_id primary key (transaction_type_id),
    constraint u_transaction_type_name unique (transaction_type_name)
)

-- table transactions
create table transactions(
    transaction_id int identity not null,
    transaction_type int not null,
    transaction_time date not null,
    transaction_location int not null,
    transaction_customer int not null,
    transaction_sales_assistant int not null,
    constraint pk_transactions_transaction_id primary key (transaction_id)
)
alter table transactions
    add constraint fk_transactions_transation_type foreign key(transaction_type)
        references transaction_type(transaction_type_id)
alter table transactions
    add constraint fk_transactions_transation_location foreign key(transaction_location)
        references stores(store_id)
alter table transactions
    add constraint fk_transaction_transaction_customer foreign key(transaction_customer)
        references customers(customer_id)
alter table transactions
    add constraint fk_transaction_transaction_sales_assistant foreign key(transaction_sales_assistant)
        references employees(employee_id)


-- table transaction_item
create table transaction_item(
    transaction_item_transaction_id int not null,
    transaction_item_item_id int not null,
    transaction_item_count int not null,
    constraint pk_transaction_id_item_id primary key (transaction_item_transaction_id,transaction_item_item_id)
)
alter table transaction_item
    add constraint fk_transaction_item_transaction_id foreign key(transaction_item_transaction_id)
        references transactions(transaction_id)
alter table transaction_item
    add constraint fk_transaction_item_item_id foreign key(transaction_item_item_id)
        references items(item_id)

--up data

