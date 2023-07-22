# Tiffany-Product-Management-Database
Azure Database (MSSQL)

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
