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


