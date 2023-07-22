# Tiffany-Product-Management-Database
Azure Database (MSSQL)

## Overview
Tiffany is a luxury jewelry and specialty retailer that sells jewelry, home goods, fragrances, watches, personal accessories, and more. Currently, they are expanding their business to the United States, and our database is designed to support the retail department's operations in the US.

The database has two main focuses: product and transaction. In the product-oriented module, there are three tables: items,collections,and Designer. The items table contains detailed product information, including price, collections, materials, descriptions, and more. The collections table, specifically for jewelry products, helps manage products by styles. Additionally, the "Designer" table is linked to the collections, recording designer information to evaluate brand-designer collaborations.

In the transaction module, there are eight tables mainly focusing on transaction, employee, and customer information respectively. The entire sales process is documented across different tables, capturing transaction time and place, items sold, employees involved, and most importantly, customer information.

The system not only gathers information but also allows for proactive use, such as product promotions, employee management, and store management, which will be demonstrated through business questions later in the report. Moreover, the database opens up possibilities beyond this, such as inventory management. Triggers could be implemented to automatically update inventory every time a transaction occurs, based on the number of items sold or returned.

What you will see in this project:
•	The business problem the project will address or resolve. 
•	Conceptual Data Model Diagram of your database.
	Data Entities
	Attributes
	PF/KF relationships 
•	Logical Data Model Diagram 
•	Identification of data logic.
•	SQL Up/Down script to implement the internal model with initial data.
•	SQL Up/Down Script to load / migrate in existing data.
•	A working implementation of the application (business Problems)

## Database Schema
Conceptual Data Model Diagram
<img width="468" alt="Picture1" src="https://github.com/rosalynmo/Tiffany-Product-Management-Database/assets/139208167/f3b490b0-aa8b-48f0-b326-66c3b539f7ec">

Logical Data Model Diagram 
<img width="468" alt="Picture1" src="https://github.com/rosalynmo/Tiffany-Product-Management-Database/assets/139208167/347cd2f7-c20b-40ad-8218-c080b7b571f3">


## Usage

Use case 1:  list of customer who made purchase over $5000

With customer_purchase as(
select c.customer_id, c.customer_firstname, c.customer_lastname, c.customer_email,
   	sum(s.total_sales) over(partition by c.customer_id) as total_purchase
  from transactions t
  left join customers c on t.transaction_customer = c.customer_id
  left join transaction_sales s on t.transaction_id =
            s.transaction_item_transaction_id
)
select * from customer_purchase
    where total_purchase >= 5000
    order by total_purchase desc



Use case 2: Rank the employees regarding to value of purchases they have helped with

select t.transaction_id, e.employee_id, e.employee_firstname,
   e.employee_lastname, e.employee_job_title,s.total_sales
   from transactions t
   left join employees e on t.transaction_sales_assistant = e.employee_id
   left join transaction_sales s on t.transaction_id = 
             s.transaction_item_transaction_id
   order by s.total_sales desc



use case 3: Gift choice: what is the best selling item in jewelry under $1000

with item_sold as(
select distinct i.transaction_item_item_id,
   sum(i.transaction_item_count) over (PARTITION by i.transaction_item_item_id) as count_of_item_sold
   from transaction_item i
   group by i.transaction_item_item_id, i.transaction_item_count
)
select item_id, item_name, item_department, item_price, item_materials, item_gemstone, item_carat_weight
   from item_sold
   left join items on item_sold.transaction_item_item_id = items.item_id
   where items.item_price < 1000 and item_department = 'Jewelry'
