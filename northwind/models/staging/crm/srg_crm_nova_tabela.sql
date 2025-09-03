with renamed as (
    select
      *
    from
        {{ref('raw_crm_nova_tabela')}}

)

select * from renamed