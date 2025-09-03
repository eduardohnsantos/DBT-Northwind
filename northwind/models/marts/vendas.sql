{{config(
    materialized='incremental',
    unique_key='category_id',
    on_schema_change='sync_all_columns'
)}}


select * from {{ ref('srg_crm_nova_tabela') }}


{% if is_incremental() %}
    where update_at > (select max(update_at) from {{ this }})
{% endif %}