drop view if exists transaction_sales 
go
Create view transaction_sales 
AS
with item_matchup as (
select * 
    from transaction_item t
    join items i on t.transaction_item_item_id = i.item_id
)
select distinct transaction_item_transaction_id, 
    sum(transaction_item_count * item_price) over (PARTITION by transaction_item_transaction_id) as total_sales
    from item_matchup
    group by transaction_item_transaction_id, transaction_item_count, item_price