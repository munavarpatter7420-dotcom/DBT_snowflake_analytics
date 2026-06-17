CREATE OR REPLACE TABLE CUSTOMERS (
    CUSTOMER_ID NUMBER,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50)
);
Insert Sample Data
INSERT INTO CUSTOMERS VALUES
(1,'Munavar','Patter'),
(2,'Sharukh','Shaik'),
(3,'Peter','Parker'),
(4,'Emma','Watson');


select
    customer_id,
    first_name,
    last_name
from raw.customers