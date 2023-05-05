{{ config(materialized="view") }}

SELECT 

dispatching_base_num,

-- locationids
CAST(PUlocationID AS INTEGER) AS pickup_locationid,
CAST(DOlocationID AS INTEGER) AS dropoff_locationid,

--Timestamps
CAST(pickup_datetime AS TIMESTAMP) AS pickup_datetime,
CAST(dropOff_datetime AS TIMESTAMP) AS dropoff_datetime,

--tripinfo
SR_Flag,


FROM {{ source('staging','fhv_trip')  }}