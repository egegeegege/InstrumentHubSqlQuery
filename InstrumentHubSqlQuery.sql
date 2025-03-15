use INSTRUMENTHUB --InstrumentHub tablosuna geiþ yap(seç)

select * from EProducts --ürünlerin hepsini listele

select Top 5 * from EProducts Order by Price Desc -- en pahalý 5 ürünü listele

-- Kategoriye göre ürün sayýlarý
SELECT d.CategoryName as CategoryName, COUNT(ep.Id) as ProductCount 
FROM EProducts ep
JOIN ProductDivision pd ON ep.Id = pd.EProductId
JOIN DivisionTable d ON pd.DivisionId = d.Id
GROUP BY d.CategoryName; 


SeLeCt * from OrderItem
SeLeCt * from DivisionTable

SELECT i.Name,i.Brand,c.Price,c.Quantity
FROM Eproducts i
JOIN OrderItem c ON i.Id = c.Id;

select * from CommentTable
select * from EProducts
select * from AspNetUsers

--Hangi Kullanýcýnýn Hangi ürünün altýna hangi yorumu yapýp o ürüne kaç raiting verdiðini ve yorum olark neyazdýðýný gösteren sorgu
select i.Rating, i.CommentText,i.Rating,x.Name,x.Price,y.FullName,y.UserName,y.Email
from CommentTable i
JOIN EProducts x ON i.EProductId = x.Id
JOIN AspNetUsers y ON i.UserId = y.Id

select * from CartTable
select * from CartItem
select * from EProducts

--Hangi Kullanýcýnýn sepetinde ne olduðunu listeleme

select c.Quantity,p.Name,p.Brand,p.Price,p.Description,a.UserName
from CartItem c
join CartTable ct on c.CartId = ct.Id
join EProducts p on c.EProductId =p.Id
join AspNetUsers a on ct.UserId =a.Id


--Kullanýcýlarýn Verdiði Sipariþler detaylarý ile Gözükür
select a.UserName,a.Email,o.Orderdate,o.Adress,o.FirstName,o.City,o.FirstName,o.Lastname
from OrderTable o
join AspNetUsers a on o.UserId = a.Id
