

--CREATE TABLE #train 
--(
--TrainingID INT IDENTITY PRIMARY KEY,
--Training VARCHAR(20),
--ClassRoom VARCHAR(20),
--StartTime CHAR(5),
--Duration CHAR(5),
--Wk CHAR(2)
--)
 
--GO
 
--INSERT INTO #train (
--Training, ClassRoom, StartTime, Duration, Wk )
--SELECT 'SQL Server','Silver-Room','10:00','02:00','M' UNION ALL
--SELECT 'SQL Server','Silver-Room','10:00','02:00','W' UNION ALL
--SELECT 'SQL Server','Silver-Room','10:00','02:00','T' UNION ALL
--SELECT 'SQL Server','Silver-Room','10:00','02:00','F' UNION ALL
--SELECT 'ASP.NET','Cloud-Room','11:00','01:45','F' UNION ALL
--SELECT 'ASP.NET','Cloud-Room','11:00','01:45','M' UNION ALL
--SELECT 'ASP.NET','Cloud-Room','11:00','01:45','TH'


--SELECT *
--FROM #train



--SELECT Training, ClassRoom, StartTime, Duration,
--STUFF((SELECT ','+Wk
--FROM #train t1
--where t1.Training=t2.Training
--FOR XML PATH('')),1,1,'')
--FROM #train t2
--Group by Training, ClassRoom, StartTime, Duration



---------------61. Swap Values of a Column Puzzle ]--------




--CREATE TABLE #Swap
--(
--Val VARCHAR(1)
--)
--GO
 
--INSERT INTO #Swap(Val) VALUES ('A'),('B'),('B'),('A'),('B'),('B')


--SELECT *
--FROM #Swap


--SELECT Case
--		   WHEN Val='A' THEN 'B'
--		   ELSE 'A'
--		   END AS 'New_Val'
--FROM #Swap
 
----


------------------62.--------------------------


----CREATE TABLE #PilotSkills
----(
----pilot CHAR(15) NOT NULL,
----plane CHAR(15) NOT NULL,
----PRIMARY KEY (pilot, plane)
----);
 
----INSERT INTO #PilotSkills
----VALUES ('Celko', 'Piper Cub'),
----('Higgins', 'B-52 Bomber'),
----('Higgins', 'F-14 Fighter'),
----('Higgins', 'Piper Cub'),
----('Jones', 'B-52 Bomber'),
----('Jones', 'F-14 Fighter'),
----('Smith', 'B-1 Bomber'),
----('Smith', 'B-52 Bomber'),
----('Smith', 'F-14 Fighter'),
----('Wilson', 'B-1 Bomber'),
----('Wilson', 'B-52 Bomber'),
----('Wilson', 'F-14 Fighter'),
----('Wilson', 'F-17 Fighter');
 
----CREATE TABLE #Hangar
----(
----plane CHAR(15) PRIMARY KEY
----);
 
----INSERT INTO #Hangar
----VALUES
----('B-1 Bomber'),
----('B-52 Bomber'),
----('F-14 Fighter');


----SELECT PS.pilot
----FROM #PilotSkills PS INNER JOIN #Hangar H
----ON PS.plane=H.plane
----GROUP BY PS.pilot
----HAVING COUNT(PS.plane)>= (SELECT COUNT(*) FROM #Hangar)




-------------------
