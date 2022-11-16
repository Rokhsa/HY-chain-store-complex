--Task num.4

Select Store_ID, Orderdate, (Select AVG (Online_sale_Amount_IRR) from Hyperstar_datasource) As AVG_Online_sale,
(Select AVG (Offline_sale_Amount_IRR) from Hyperstar_datasource) As AVG_Offline_sale
From Hyperstar_datasource
Order By Orderdate

Select Store_ID, Orderdate, Online_sale_amount_IRR, Offline_sale_Amount_IRR
From Hyperstar_datasource
Where Orderdate IN ( Select Orderdate
	From Month1 
	Where (orderdate = '2022-06-1' OR Orderdate = '2022-06-10')
	)
;

Select Store_ID, Orderdate, Online_Sale_Amount_IRR, Offline_Sale_Amount_IRR
From Hyperstar_datasource
Where (Online_Sale_Amount_IRR <> 0)
AND (Offline_Sale_Amount_IRR <> 0)
Order By Orderdate;

Select Store_ID, Orderdate, Online_Sale_Amount_IRR, Offline_Sale_Amount_IRR
From Hyperstar_datasource
Where Orderdate 
Between '2022-08-01' AND '2022-08-30'
Order By Orderdate;


Select Orderdate, Store_ID, Online_Sale_Amount_IRR, Offline_Sale_Amount_IRR
From Sales
Inner Join Month1
	On Sales.Order_ID = Month1.Order_ID
Where (Store_ID = 'Jamaran')
And (Orderdate = '2022-08-01')

Select Orderdate, Store_ID, Online_Sale_Amount_IRR, Offline_Sale_Amount_IRR
From Sales
Join Month1
	On Sales.Order_ID = Month1.Order_ID
Where Orderdate
Between '2022-07-01' AND '2022-07-30'

-------------------------------------------------------------------------------------------------
Select Sum (Online_Sale_Amount_IRR) As SumOnlineSale, 
Sum (Offline_Sale_Amount_IRR) As SumOfflineSale,
Max (OnlineQty) As MaxOnlineQty,
Max (OfflineQty) As MaxOnlineQty,
From EramStore 

Select Itemcode,
Max (OnlineQty) As MaxOnlineQty,
Max (OfflineQty) As MaxOnlineQty,
Min (OnlineQty) As MinOnlineQty,
Min (OfflineQty) As MinOnlineQty
From EramStore 
Group By Itemcode
Order By Itemcode

Select AVG (Online_Sale_Amount_IRR) As AVGOnlineSale,
AVG (Offline_Sale_Amount_IRR) As AVGOfflineSale
From Eramstore
Order By AVG (Online_Sale_Amount_IRR) Desc
;


