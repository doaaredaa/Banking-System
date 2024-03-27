
create procedure get_cust_by_age
@age1 int, @age2 int
as 
begin 
select * from [Dim accountCustomer] as c
where c.age between @age1 and @age2
end

