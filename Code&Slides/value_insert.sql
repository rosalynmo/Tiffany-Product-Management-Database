-- insert value into items table
insert into items (item_name,item_department, item_category, item_collection,
item_price,item_materials,item_gemstone,item_carat_weight,item_description)
values 
('Diamonds by the Yard Single Diamond Pendant','Jewelry', 'Pendant', 1, 900,'Platinum'
,'Diamond',0.05,'A single hand-polished diamond shines at the center of this delicate and refined platinum pendant.'),

('Smile Pendant, Small','Jewelry', 'Pendant', 1, 915,'Rose Gold'
,null,null,'Simple and elegant, this curved pendant has a modern yet timeless aesthetic.'),

('Tiffany Victoria® Pendant','Jewelry', 'Pendant', 2, 11700,'Platinum'
,'Diamond',0.81,'Inspired by the fire and radiance of our superlative diamonds, Tiffany Victoria uses a unique combination of cuts for a distinctly romantic sensibility.'),

('Elsa Peretti® Bean® design Pendant','Jewelry', 'Pendant', 3, 1800,'Rose Gold'
,null,null,'Elsa Peretti’s iconic Bean® design is a symbol of life’s origins. A beautifully humble form, the bean’s simple shape, natural contours and smoothness always appealed to her'),

('Tiffany T Diamond and Turquoise Circle Pendant','Jewelry', 'Pendant', 2, 3100,'White Gold'
,'Turquoise',0.05,'Traced with scintillating diamonds, this circle pendant features turquoise, one of the first stones used in jewelry design and a favorite of Tiffany designers for over a century.'),

('Tiffany T T1 Circle Pendant','Jewelry', 'Pendant', 2, 6800,'Yellow Gold'
,null,null,'Precisely crafted in 18k yellow gold, this large circle pendant features a beveled edge that makes a striking statement.'),

('Tiffany T T1 Ring',	'Jewelry',	'Ring', 2,6000,'White Gold'
,'Diamond',	0.45,'Pavé diamonds illuminate this wide ring, adding a striking radiance to the design. A reinvention of a Tiffany icon, Tiffany T1 designs represent individual strength and perpetual power, worn outwardly to express what lies within.'),

('Tiffany Victoria® Vine Band Ring',	'Jewelry',	'Ring',	null,	4000,	'Rose Gold'
,'Diamond',	0.38,	'This band ring is crafted of 18k rose gold that features a contrast of high polish and sandblasted finishes'),

('Elsa Peretti® Wave Three-row Diamond Ring',	'Jewelry',	'Ring',	null,	1650,	'Yellow Gold'
,'Diamond',	0.05,	'Inspired by Elsa Peretti’s love of the natural world, the Wave collection recalls the fluid lines of the undulating sea. A round brilliant diamond shines at the center of this three-row ring.'),

('Tiffany Knot Ring',	'Jewelry','Ring', 2, 1000, 'Rose Gold', null, null, 'The entwined ends of Tiffany Knot’s signature motif symbolize the power of connections between people. Balancing strength and elegance, each Tiffany Knot design is a complex feat of craftsmanship.'),

('Tiffany Victoria® Vine Drop Earrings',	'Jewelry',	'Earrings',	3,	14300	,'White Gold'
,'Diamond',	0.99,	'These long drop vine earrings are crafted of 18k gold that features a contrast of high polish and sandblasted finishes.'),

('Tiffany Victoria® Diamond Vine Drop Earrings in Platinum',	'Jewelry',	'Earrings',	3,	37000,	'Platinum'
,'Diamond',	3.6,	'With an intensity that rivals the night sky, Tiffany Victoria celebrates the blazing brilliance of Tiffany diamonds.'),

('Tiffany Knot Earrings',	'Jewelry',	'Earrings',	3,	3000,	'Rose Gold'
,'Diamond',	0.09,	'These earrings are crafted with rose gold and pavé diamonds, then polished by hand for high shine.'),

('Elsa Peretti® Color by the Yard Earrings',	'Jewelry',	'Earrings',	4,	1300,	'Platinum'
,'Sapphires',	0.22	,'Earrings in platinum with sapphires.'),

('Elsa Peretti® Mesh Narrow Bracelet','Jewelry',	'Bracelet', 4,	6400,	'Rose Gold'
,null, null, 'The form is malleable and ergonomic in the way it drapes over the bodys contours Narrow bracelet in 18k rose gold.'),

('Tiffany Knot Double Row Hinged Bangle' ,	'Jewelry' ,	'Bracelet', 2,	22000,	'Rose Gold'
,'Diamond',	2.05,	'The entwined ends of Tiffany Knot’s signature motif symbolize the power of connections between people. Balancing strength and elegance, each Tiffany Knot design is a complex feat of craftsmanship.'),

('Champagne Flute Set',	'Home',	'Drinkware',1,	100	,null
,null,null,'In our Home & Accessories collection, form meets function and quality to make ordinary'),

('Small Jewelry Box',	'Home',	'Decor'	,null,	895	,null
,null,null,'This keepsake jewelry box is crafted with high-quality Italian leather, and includes a removable insert with a suede interior and a functional lock and key.'),

('Tiffany T Limited-edition 25 mm Round Watch',	'Watch'	,'Watch', 2,3500,	'Stainless steel'
,'Diamond',	0.04,	'Drawing inspiration from the iconic Tiffany T jewelry collection, Tiffany T limited-edition watches are a distinctive blend of innovative design and expert Swiss craftsmanship.'),

('Tiffany & Co. Rose Gold Eau de Parfum', 'Fragance', 'Fragance',null, 108	,null
,null,null,'Bright and effervescent, Tiffany & Co. Rose Gold fragrance embodies the spirit of optimism.')

GO


-- insert value into collections table
insert into collections (collection_name,collection_designer, collection_date_release, collection_description)

values 
('Diamonds by the Yard',1,	'1988-07-08',
'The Diamonds by the Yard Chain features 18K gold with 20 round bezel set diamond stations on a Boston Chain. 20 round diamonds, 0.60 TW. 16 inches.'),

('Tiffany T',2,'1945-03-07',
'The Tiffany T collection is marked by a sleek T motif, a signature House code'),

('Victoria',3, '1998-04-22',
'Perfect for the woman who embodies poise and style'),

('Bean',4,'1999-07-03','‘Bean’ design has stood the test of time echoing the Peretti’s deep-rooted admiration for the natural.')
GO


-- insert value into designers table
insert into designers (designer_firstname, designer_lastname, designer_email, designer_home_country)

values 
('Paloma' ,'Picasso' ,'huiasbsdi@gmail.com','Italy'	),
('Jean', 'Schlumberger','huiosbi@gmail.com','France'),
('Frank' ,	'Gehry','dhiod@gmail.com','France'),
('Elsa' ,'Peretti',	'sdhidfbis@gmail.com','United States')

GO


-- insert value into transaction_types table
insert into transaction_type (transaction_type_name)
VALUES
('Sale'),
('Return')
GO



-- insert value into customer_titles table
insert into customer_title (customer_title_name)

values 
('Mr.' ),
('Ms.'),
('Miss.')

GO


-- insert value into customers table
insert into customers (customer_firstname, customer_lastname, customer_email,	customer_birthday	,customer_phone,	customer_title,	customer_country,	customer_state,	customer_city,	customer_zipcode,	customer_address)
VALUES
('Roger', 'Bell','rogerbell@gmail.com' ,'1968-07-13',	4514155985, 1, 'United States',
'NY',	'New York City',	10012,	'18367 windsor ave' ),
('Harold',	'Matthews',	'royyoung@gmail.com', '1978-11-21', 5265555485, 3, 'United States',
'NY',	'New York City',	10012,	'243 windsor ave' ),
('Roy'	,'Young',	'debraallen@gmail.com',	'1969-05-01', 2459576666,	2,	'United States',
'NY',	'New York City ',	10049,	'66 city ave' ),
('Debra', 'Allen', 'alandean@gmail.com', '2000-05-04', 4569575824, 1,	'United States',
'NY',	'New York City',	10012,	'11 lake ave' ),
('Alan', 'Dean','robinmatthews@gmail.com', '1989-07-08', 1675246697, 2,	'United States',	
'NY','New York City',	10012,	'18367 windsor ave' ),
('Harold',	'Matthews',	'royyeung@gmail.com','1978-11-21', 5265555485, 3,	'United States',
'NY',	'New York City',	10012,	'44 windsor ave' ),
('Randy',	'Burton' ,'terrynguyen@gmail.com', '1984-12-23',3156897789, 2 ,'United States',
'MA'	,'Boston',	02110	,'18373 windsor ave'),
('Terry',	'Nguyen',	'royyoqqg@gmail.com', '1978-12-21',5262435485, 3,	'United States',
'MA'	,'Boston',	02111	,'234 timb ave' ),
('Henry'	,'Sanders','haroldmattwhews@gmail.com'	,'1968-11-14',	4513445985,	1	,'United States',
'MA'	,'Boston',	02113	,'543 comstock ave' ),
('Benjamin'	,'Phillips', 'theresaorrestorres@gmail.com'	,'1989-07-04',9842259658,	3,	'United States',
'NJ',	'Jersey City' ,	10012,	'18376 vairo blvd' ),
('Roger', 'Bell','haroldmatthews@gmail.com'	,'1968-07-13', 4514155985, 1,'United States',
'NJ',	'Jersey City',	10012,	'898 windsor ave' ),
('Harold', 'Matthews',	'royyoueng@gmail.com', '1978-11-21', 5265555485,	3,	'United States',
'NJ',	'Jersey City',	10012,	'333 windsor ave' ),
('Gareth', 'Jenkinson',	'kathleenwoods@gmail.com', '1999-02-01', 3503397890,	3,	'United States',
'NJ',	'Jersey City' ,	10012,	'80 vairo blvd' ),
('Kathleen', 'Woods','paddytogher@gmail.com','1965-07-08', 3113242210, 2, 'United States',
'NJ',	'Jersey City',	10012,	'682 windsor ave' ),
('Paddy','Togher',	'ralphmcdarby@gmail.com', '1689-01-06',	2586459510, 3, 'United States',
'NJ',	'Jersey City',	10012,	'909 windsor ave' ),
('Ralph',	'McDarby',	'shaneorourke@gmail.com', '1988-02-04', 3185898840, 1,'United States',
'NY',	'New York City', 10012,	'33th ave ' ),
('Shane',	'Matthews',	'roysdniung@gmail.com'	,'1978-11-21', 5265555485, 3,	'United States',
'NY',	'New York City', 10012,	'243 kitten ave' ),
('Roy'	,'Shane',	'debrwjopslen@gmail.com', '1969-05-01',	794619310, 2, 'United States',
'NY',	'New York City', 10049,	'66 pina ave' ),
('Adrienne', 'Allen'	,'alandsnian@gmail.com', '2000-05-04',	6600004516, 1, 'United States',
'NY',	'New York City', 10012,	'11 sie ave' ),
('John', 'Bell','haroldmsnithews@gmail.com', '1968-07-13', 5593493349,	1, 'United States',
'NY',	'New York City', 10012,	'18367 niesd ave' ),
('William',	'Matthews',	'onidsung@gmail.com', '1978-11-21', 2142499950, 3, 'United States',
'NY',	'New York City', 10012,	'243 uee ave' )
GO

-- insert value into store_type table
insert into store_type (store_type_name)
values 
('flagship' ),
('department store'),
('authorized retailer')
GO

-- insert value into stores table
insert into stores (store_type,	store_country, store_state, store_city, store_address, store_zipcode, store_contact_number)
values 
(3,	'USA',	'NY',	'New York City',	'Fifth Avenue and 57th Street in Manhattan', 10012,	'2122266136'),
(1,	'USA'	,'NY',	'New York City',	'37 Wall Street',	10005,	'2125148015'),
(1,	'USA'	,'MA',	'Boston',	'100 Huntington Avenue ',	2116,	'6173530222'),
(2,	'USA'	,'D.C.', 'Washington D.C.',	'960 New York Avenue NW CityCenterDC', 20001,	'2027721008')
GO


-- insert value into employees table
insert into employees (employee_firstname,	employee_lastname,	employee_email,	employee_phone,	employee_job_title,	employee_working_location)
values 
('Sarah', 	'Barlow',	'sbarlow@tiffany.com',	'2333442565',	'sales associate'	,3),
('Amanda',	'Acosta',	'aacosta@tiffany.com'	,'7667445212'	,'store manager',	1),
('Lily'	,'Henderson',	'lhenderson@tiffany.com',	'6763442567',	'sales associate',	2),
('Theresa'	,'Coleman',	'tcoleman@tiffany.com',	'4563444127',	'senior sales associate',	3),
('Darcie',	'Shelton'	,'dshelton@tiffany.com'	,'1323447114',	'sales associate',	2),
('Aidan'	,'Bird',	'abird@tiffany.com',	'7553444342',	'store manager'	,2),
('Julie'	,'Meyer',	'jmeyer@tiffany.com',	'6533447455',	'senior sales associate',	1),
('Phyllis' ,	'Johnston',	'phyjoh@tiffany.com',	'6533147455',	'store manager'	,3),
('Kimberly' ,	'Little',	'kimlit@tiffany.com',	'6533427455',	'sales associate',	1),
('Justin',	'Dixon',	'jusdix@tiffany.com',	'6533441455',	'senior sales associate',	4),
('Shirley' ,	'Rivera',	'shiriv@tiffany.com',	'6533447255',	'store manager'	,4),
('Marilyn',	'Franklin',	'marifra@tiffany.com'	,'6533447453',	'sales associate',4)
GO


-- insert value into transactions table
insert into transactions (transaction_type,	transaction_time, transaction_location,	transaction_customer, transaction_sales_assistant)
VALUES
(1,'2020-03-31', 1,11,10),
(1,'2021-07-01',2,10,8),
(1,'2022-02-12',2,8,6),
(1,'2020-01-23',3,7,5),
(1,'2022-07-15',1,1,6),
(1,'2019-08-04',4,4,9),
(1,'2020-01-31',4,17,2),
(1,'2019-11-23',2,20,4),
(1,'2021-12-30',1,19,5),
(1,'2019-11-22',3,18,7)
GO


-- insert value into transaction_items bridge table
insert into transaction_item (transaction_item_transaction_id, transaction_item_item_id, transaction_item_count)
VALUES
(1, 2,2),
(1,5,2),
(2, 5,1),
(3,11,2),
(3,	8,2),
(4,9,1),
(5,2,1),
(6,13,1),
(7,12,1),
(7,17,1),
(7,1,3),
(8,20,1),
(9,4,1),
(10,9,1)
GO


