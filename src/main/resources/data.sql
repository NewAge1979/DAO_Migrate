Insert Into public.Customers(name, surname, age, phone_number)
Values
    ('Vasia', 'Pupkin', 23, '999 999-99-99'),
    ('Ivan', 'Ivanov', 80, '999 111-11-11'),
    ('Ivan', 'Smirnov', 60, '999 222-22-22');

Insert Into public.Orders(date, customers_id, product_name, amount)
Select current_date, id, 'Products for ' || name || ' ' || surname || '(id:' || id || ')', 200 * id + 50 * (id - 1)
From public.Customers