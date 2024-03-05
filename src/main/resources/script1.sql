Select t1.product_name
From
    public.Orders t1
    Inner Join public.Customers t2 On t2.id = t1.customers_id And t2.name = :name