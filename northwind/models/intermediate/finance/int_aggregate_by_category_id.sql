with int_aggregate_by_category_id as (
    select
        category_id, 
        count(*)
    from
        {{ref('srg_crm_nova_tabela')}}
    group by category_id
)

select * from int_aggregate_by_category_id