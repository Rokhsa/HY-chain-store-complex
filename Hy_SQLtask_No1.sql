-- Task num.1
Create Database Hyperstardb
GO

Use Hyperstardb


--DDL COMANDS
Create Table ERAM
(Store_ID varchar (5) Default 'ERAM',
Itemcode int Foreign Key References Product(Itemcode)
)

Alter Table ERAM
	ADD Dep_ID varchar (30) Foreign Key References Department(Dep_ID);

Alter Table ERAM
	ADD ID int,
	Online_Sale_Amount_IRR Money,
	Offline_Sale_Amount_IRR Money,
	OnlineQty int,
	OfflineQty int;

Alter Table ERAM
	Alter Column Online_Sale_Amount_IRR int;

sp_rename 'ERAM.OnlineQty', 'OnlineQuantity', 'Column';

sp_rename 'ERAM', 'Eramstore';

Truncate Table Eramstore;

Drop Table Eramstore;
