Create Table If Not Exists public.Customers(
    id Serial Not Null,
    name Character Varying(32) Collate pg_catalog.default,
    surname Character Varying(32) Collate pg_catalog.default,
    age Integer,
    phone_number Character Varying(16) Collate pg_catalog.default,
    Constraint PK_Customers Primary Key(id),
    Constraint Check_Age Check(age >= 0 And age <= 200)
) Tablespace pg_default;