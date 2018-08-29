/*
select * 
from Invoice i
join InvoiceLine il on il.invoiceId =i.invoiceId
where il.UnitPrice > 0.99;
*/

/*
select i.invoiceDate, c.FirstName , c.LastName, i.Total
from invoice i 
join Customer c on i.customerid = c.customerid*/

/*
select c.FirstName , c.LastName , e.FirstName , e.LastName
from customer c 
join Employee e on c.SupportRepId = e.EmployeeId*/

/*select al.title , ar.name
from album al
join artist ar on al.artistid = ar.artistid*/

/*
select pt.Trackid
from PlaylistTrack pt
join Playlist p on p.playlistid = pt.playlistId
where p.Name = 'Music';*/

/*
select t.Name  
from Track t
join PlaylistTrack pt on pt.TrackId = t.TrackId
where pt.Playlistid = 5;*/

/*
select t.Name
from Track t
join PlaylistTrack pt on t.TrackId = pt.Trackid
join Playlist p on pt.PlaylistId = p.PlaylistId*/

/*
select t.Name, a.title
from Track t
join Album a on t.AlbumId = a.AlbumId
join Genre g on g.GenreId = t.GenreId
where g.Name = "Alternative";*/

/*
select *
from invoice
where InvoiceId in (select InvoiceId from InvoiceLine where UnitPrice > 0.99)*/

/*
select *
from PlaylistTrack pt
where PlaylistId in (select PlaylistId from Playlist where name ="Music")*/

/*
select Name 
from Track 
where TrackId in(select TrackId from PlaylistTrack where PlaylistId = 5 )*/

/*
select * 
from Track
where GenreId in (select GenreId from Genre where Name = "Comedy")*/

/*
select * 
from Track
where AlbumId in (select AlbumId from Album where Title = "Fireball")*/

/*
select * 
from Track
where AlbumId in(select AlbumId from Album where ArtistId in 
(select ArtistId from artist where name = "Queen"))*/

/*
update Customer
set Fax = null
where Fax is not null*/

/*
update Customer
set Company = "self"
where Company is null*/

/*
update Customer
set LastName = "Thompson"
where FirstName = "Julia" and LastName = "barnett";*/

/*
update Customer 
set SupportRepId = 4*/


-- update Track
-- set composer = "The darkness around us"
-- where GenreId = (select GenreId from Genre where Name = "Metal")
-- and Composer is null;

/*
select Count(*), g.Name
from Track t
join Genre g on t.GenreId = g.GenreId
group by g.Name*/


/*
select Count(*), g.Name
from Track t
join Genre g on t.GenreId = g.GenreId
where g.Name = "Pop" or g.Name = "Rock"
group by g.Name*/

/*
select Count(*), ar.Name
from Artist ar
join Album al on al.ArtistId = ar.ArtistId
group by al.ArtistId*/

/*
select distinct Composer 
from Track*/

/*
select distinct BillingPostalCode
from Invoice*/

/*
select distinct Company
from Customer*/



/*
CREATE TABLE practice_delete ( Name string, Type string, Value integer );
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "bronze", 50);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "bronze", 50);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "bronze", 50);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "silver", 100);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "silver", 100);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "gold", 150);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "gold", 150);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "gold", 150);
INSERT INTO practice_delete ( Name, Type, Value ) VALUES ("delete", "gold", 150);

SELECT * FROM practice_delete;*/

/*
delete 
from practice_delete
where type = "bronze"*/

/*
delete 
from practice_delete
where type = "silver"*/

/*
delete 
from practice_delete
where value= 150*/

-- drop table if exists Users cascade;
-- drop table if exists Product cascade;
-- drop table if exists Orders cascade;


-- create table Users (
--   	Id serial primary key,
-- 	Name text,
--     Email text
-- );

-- create table Product (
-- 	Id serial primary key,
--   	Name text,
--   	Price integer
-- );

-- create table Orders (
-- 	Id serial primary key,
--   	Product_Id integer References Product(id)
-- );


-- Insert into Users
-- values(1, 'joe', 'joe@joe.com');


-- Insert into Users
-- values(2, 'bob', 'bob@joe.com');


-- Insert into Users
-- values(3, 'bill', 'bill@joe.com');


-- Insert into Product
-- values(1,'bad things', 10 );

-- Insert into Product
-- values(2,'ok things', 60 );

-- Insert into Product
-- values(3,'good things', 8500 );


-- Insert into Orders
-- values(1,1);

-- Insert into Orders
-- values(2,2);

-- Insert into Orders
-- values(3,3);


-- select * 
-- from Product
-- join Orders on product.id = Orders.Product_Id
-- where Orders.id = 1

-- select *
-- from Orders


-- select sum (price)
-- from Product 
-- join Orders on Product.id = Orders.Product_Id
-- where Orders.Product_id = 1

-- alter table Orders add foreign key (Id) references Users(Id)