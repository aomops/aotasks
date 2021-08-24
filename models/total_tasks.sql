{{ config(materialized='table') }}

WITH base AS (
SELECT 
ID,
subject,
status,
description,
DATE_TRUNC('year',createddate::Date)::Date AS created_year,
isclosed,
calltype,
calldisposition,
call_disposition__c,
salesloft_cadence_name__c,
subtype__c,
isdeleted
FROM "defaultdb".public.task0
  UNION ALL
SELECT 
ID,
subject,
status,
description,
DATE_TRUNC('year',createddate::Date)::Date AS created_year,
isclosed,
calltype,
calldisposition,
call_disposition__c,
salesloft_cadence_name__c,
subtype__c,
isdeleted
FROM "defaultdb".public.task1
UNION ALL
SELECT 
ID,
subject,
status,
description,
DATE_TRUNC('year',createddate::Date)::Date AS created_year,
isclosed,
calltype,
calldisposition,
call_disposition__c,
salesloft_cadence_name__c,
subtype__c,
isdeleted
FROM "defaultdb".public.task2
UNION ALL
SELECT 
ID,
subject,
status,
description,
DATE_TRUNC('year',createddate::Date)::Date AS created_year,
isclosed,
calltype,
calldisposition,
call_disposition__c,
salesloft_cadence_name__c,
subtype__c,
isdeleted
FROM "defaultdb".public.task3
  UNION ALL
SELECT   
ID,
subject,
status,
description,
DATE_TRUNC('year',createddate::Date)::Date AS created_year,
isclosed,
calltype,
calldisposition,
call_disposition__c,
salesloft_cadence_name__c,
subtype__c,
isdeleted
FROM "defaultdb".public.task4
    UNION ALL
SELECT   
ID,
subject,
status,
description,
DATE_TRUNC('year',createddate::Date)::Date AS created_year,
isclosed,
calltype,
calldisposition,
call_disposition__c,
salesloft_cadence_name__c,
subtype__c,
isdeleted
FROM "defaultdb".public.task5
      UNION ALL
SELECT   
ID,
subject,
status,
description,
DATE_TRUNC('year',createddate::Date)::Date AS created_year,
isclosed,
calltype,
calldisposition,
call_disposition__c,
salesloft_cadence_name__c,
subtype__c,
isdeleted
FROM "defaultdb".public.task6
) 

SELECT 
Id,
subject,
status,
created_year,
isclosed,
salesloft_cadence_name__c,
isdeleted
--COUNT(DISTINCT Id) AS count
FROM base
--GROUP BY 1