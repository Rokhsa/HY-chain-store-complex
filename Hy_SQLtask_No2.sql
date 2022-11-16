--Task Num.2

Create Table Hyperstar 
(Order_ID int Primary Key,
Store_ID varchar (15),
Orderdate Date, Itemcode int, 
Dep_ID varchar (30), 
Online_Sale_Amount_IRR Money, Offline_Sale_Amount_IRR Money,
OnlineQty float, OfflineQty float
)
Create Table Orders
(Orderdate Date Primary Key,
Order_ID int Foreign Key References Hyperstar(Order_ID))

Create Table Store
(Store_ID varchar (15) Primary Key,
Order_ID int Foreign Key References Hyperstar(Order_ID))

Create Table Department
(Dep_ID varchar (30) Primary Key,
Order_ID int Foreign Key References Hyperstar(Order_ID))

Create Table Product
(Itemcode int Primary Key,
Order_ID int Foreign Key References Hyperstar(Order_ID))

Commit;

--Insert Data into Tables

Insert into Hyperstar Values
(1, 'Eram', '2022-06-01', 390, 'CONSUMER GOODS', 0, 1745000, 0, 5)
(8749, 'Fardis 1', '2022-06-01', 20686, 'CONSUMER GOODS', 1950000, 0, 15, 0)
(9011, 'Jamaran', '2022-06-01', 8828, 'CONSUMER GOODS', 0, 1650000, 0, 5)
(20522, 'Jamaran', '2022-06-02', 480, 'CONSUMER GOODS', 925000, 0, 5, 0)
(20168, 'Fardis 1', '2022-06-02', 35166, 'CONSUMER GOODS', 0, 11662000, 0, 140) 
(10524, 'Eram', '2022-06-02', 566, 'CONSUMER GOODS', 1965000, 3930000, 5, 10)
(22301, 'Eram', '2022-06-03', 19159, 'FRESH FOOD', 8788250, 28577500, 10425, 33.9)
(32113, 'Fardis 1', '2022-06-03', 178920, 'FRESH FOOD', 0, 2495000, 0, 5)
(32344, 'Jamaran', '2022-06-03', 57752, 'FRESH FOOD', 0, 106429650, 0, 222.91)
(69343, 'Eram', '2022-06-07', 166195, 'CONSIGMENT', 0, 22500000, 0, 5)
(268, 'Eram', '2022-06-01', 322511, 'HEAVY HOUSE HOLD', 0, 10950000, 0, 5)
(5, 'Eram', '2022-06-01', 994, 'LIGHT HOUSE HOLD', 3600000, 0, 10, 0)
(138, 'Eram', '2022-06-01', 229742, 'TEXTILE', 0, 1445000, 0, 5)




Insert into Orders Values
('2022-06-01', 1)
('2022-06-02', 10524)
('2022-06-03', 22301)


Insert Into Store Values
('Eram', 1)
('Fardis 1', 8749)
('Jamaran', 9011)

Insert Into Department Values
('CONSIGMENT', 69343)
('CONSUMER GOODS', 1)
('FRESH FOOD', 22301)
('HEAVY HOUSE HOLD', 268)
('LIGHT HOUSE HOLD', 5)
('TEXTILE', 138)

Insert INto Product Values
(1, 390)
(20686, 8749)
(8828, 9011)
(480, 20522)
(35166, 20168)
(566, 10524)
(19159, 22301)
(178920, 32113)
(57752, 32344)
(166195, 69343)





