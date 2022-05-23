with source as (

    select * from {{ source('bigquery', 'makelaarsland_raw') }}

),

renamed as (

    select
        url,
        city,
        date,
        roof,
        floor,
        price,
        status,
        volume,
        heating,
        parking,
        delivery,
        location,
        amenities,
        isolation,
        build_year,
        streetname,
        warm_water,
        living_size,
        postal_code,
        heating_type,
        outside_size,
        rooms_amount,
        floors_amount,
        kvk_insurance,
        appartment_type,
        balcony_terrace,
        kvk_repair_plan,
        bathrooms_amount,
        external_storage,
        kvk_registration,
        construction_type,
        kvk_reserve_funds,
        bathroom_amenities,
        kvk_yearly_meeting,
        _ab_source_file_url,
        kvk_monthly_payment,

    from source

)

select * from renamed