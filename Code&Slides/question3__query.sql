with item_sold as(
select distinct i.transaction_item_item_id,
    sum(i.transaction_item_count) over (PARTITION by i.transaction_item_item_id) as count_of_item_sold
    from transaction_item i
    group by i.transaction_item_item_id, i.transaction_item_count
)
select item_id, item_name, item_department, item_category, item_price, item_materials, item_gemstone, item_carat_weight
    from item_sold
    left join items on item_sold.transaction_item_item_id = items.item_id
    where items.item_price < 1000 and item_department = 'Jewelry'