use INSTRUMENTHUB --InstrumentHub tablosuna geiş yap(seç)

select * from EProducts --ürünlerin hepsini listele

select Top 5 * from EProducts Order by Price Desc -- en pahalı 5 ürünü listele

-- Kategoriye göre ürün sayıları
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

--Hangi Kullanıcının Hangi ürünün altına hangi yorumu yapıp o ürüne kaç raiting verdiğini ve yorum olark neyazdığını gösteren sorgu
select i.Rating, i.CommentText,i.Rating,x.Name,x.Price,y.FullName,y.UserName,y.Email
from CommentTable i
JOIN EProducts x ON i.EProductId = x.Id
JOIN AspNetUsers y ON i.UserId = y.Id

select * from CartTable
select * from CartItem
select * from EProducts

--Hangi Kullanıcının sepetinde ne olduğunu listeleme

select c.Quantity,p.Name,p.Brand,p.Price,p.Description,a.UserName
from CartItem c
join CartTable ct on c.CartId = ct.Id
join EProducts p on c.EProductId =p.Id
join AspNetUsers a on ct.UserId =a.Id


--Kullanıcıların Verdiği Siparişler detayları ile Gözükür
select a.UserName,a.Email,o.Orderdate,o.Adress,o.FirstName,o.City,o.FirstName,o.Lastname
from OrderTable o
join AspNetUsers a on o.UserId = a.Id
