select t.transaction_id, e.employee_id, e.employee_firstname, 
    e.employee_lastname, e.employee_job_title,s.total_sales
    from transactions t
    left join employees e on t.transaction_sales_assistant = e.employee_id
    left join transaction_sales s on t.transaction_id = s.transaction_item_transaction_id
    order by s.total_sales desc