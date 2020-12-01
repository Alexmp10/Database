select avg(amount) from Payment where paymentDate > '2019-01-01' && paymentDate < '2019-12-31';
select avg(amount) from Payment where paymentDate > '2020-01-01' && paymentDate < '2020-12-31';

select count(idProperty), idLandlord from Property group by idLandlord order by count(idProperty) desc;
