--------List of Monday's

--DECLARE @month VARCHAR(10)='April',@year INT='2018',@day INT =01
--DECLARE 
--@LastDay INT=DAY(EOMONTH(CONCAT(@month,' ',@day,' ',@year)))

----SELECT DAY(EOMONTH(CONCAT(@month,' ','30',' ',@year)))



--WHILE @day<=@LastDay
--BEGIN

--IF(DATEPART(DW,CONCAT(@month,' ',@day,' ',@year)))=2
--PRINT (CONVERT(DATE,CONCAT(@month,' ',@day,' ',@year)))

--SET @day=@day+1


--END


--------------------------GET Month Name-----------------

--SELECT DATENAME(MONTH,GETDATE(0))


-----------------------------------------------------------


---------------SQL Puzzle: SQL Advance Query – Get the DISTINCT String data after CONCAT----



--CREATE TABLE #stg(id int, strname varchar(50))

 
--INSERT INTO #stg VALUES 
--(1,'abc'),(2,'xyz'),(3,'abc')
--,(4,'pqr'),(5,'pqr'),(6,'xyz')
--,(7,'wre'),(8,'abc'),(9,'wre')


--SELECT Distinct strname+', '
--FROM #stg
--FOR XML PATH('')



-----------------------------Check the below input data and expected output and concat the string data without using STUFF function.--------------

--CREATE TABLE #A (id int, strname varchar(50))
--GO
 
--INSERT INTO #A VALUES 
--(1,'a'),(1,'b'),(1,'c')
--,(2,'x'),(2,'y')
--,(3,'p'),(3,'q'),(3,'r')
--GO


--SELECT ','+strname
--FROM #A
--FOR XML PATH('')

--SELECT ID,STUFF
--(
--(
--SELECT ','+strname
--FROM #A A1
--WHERE A1.id=A2.id
--FOR XML PATH('')
--),1,1,'')
--FROM #A A2
--GROUP BY ID




--SELECT CAST(ID AS VARCHAR(max))+','+strname
--FROM #A A1
----WHERE A1.id=A2.id
--FOR XML PATH('')




--------------------