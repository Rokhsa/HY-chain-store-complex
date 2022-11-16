----Task num.3

--With Result As
--(

	Select
	Store_ID,
	Order_ID,
	OfflineQty,
	Rank() Over (order By OfflineQty Desc) as Offlineranking
	From Hyperstar_datasource
	Where (Store_ID = 'Eram')
		AND (OfflineQty > 14400)
--)
--Select Top 10 Offlineranking From Result


Select
Store_ID,
Order_ID,
OnlineQty,
Rank() Over (order By OfflineQty Desc) as Onlineranking
From Hyperstar_datasource
Where (Store_ID = 'Eram')
	AND (OnlineQty > 1411)
;


