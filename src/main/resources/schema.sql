Drop Table If Exists public.Customers Cascade;

Create Table If Not Exists public.Customers(
    id Serial Not Null,
    name Character Varying(32) Collate pg_catalog.default,
    surname Character Varying(32) Collate pg_catalog.default,
    age Integer,
    phone_number Character Varying(16) Collate pg_catalog.default,
    Constraint PK_Customers Primary Key(id),
    Constraint Check_Age Check(age >= 0 And age <= 200)
) Tablespace pg_default;

Drop Table If Exists public.Orders Cascade;

Create Table If Not Exists public.Orders(
    id Serial Not Null,
    date Date default current_date,
    customers_id BigInt,
    product_name Character Varying(128) Collate pg_catalog.default,
    amount Numeric(16, 2),
    Constraint PK_Orders Primary Key(id),
    Constraint FK_Customers Foreign Key(customers_id)
        References public.Customers(id) Match Simple
        On Update Cascade
        On Delete Set NULL
        Not Valid,
    Constraint Check_Amount Check(amount > 0::Numeric)
) Tablespace pg_default;