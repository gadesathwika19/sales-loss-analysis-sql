DROP TABLE IF EXISTS sales;

CREATE TABLE sales (
    order_date DATE,
    region VARCHAR(50),
    category VARCHAR(50),
    sales NUMERIC,
    profit NUMERIC
);
