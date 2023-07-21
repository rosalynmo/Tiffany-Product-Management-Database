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
