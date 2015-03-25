WITH A AS (
	SELECT TOP (1000) n = CONVERT(INT, ROW_NUMBER() OVER (ORDER BY s1.[object_id]))
	FROM sys.all_objects AS s1 CROSS JOIN sys.all_objects AS s2
),

finger AS (
	SELECT

	--ID
	n as id,

	--User email
	CAST(
	CASE 
		WHEN (n%1000)+1 >= 1 AND (n%1000)+1 <= 50 THEN 1
		WHEN (n%1000)+1 >= 51 AND (n%1000)+1 <= 100 THEN 2
		WHEN (n%1000)+1 >= 101 AND (n%1000)+1 <= 150 THEN 3
		WHEN (n%1000)+1 >= 151 AND (n%1000)+1 <= 200 THEN 4
		WHEN (n%1000)+1 >= 201 AND (n%1000)+1 <= 250 THEN 5
		WHEN (n%1000)+1 >= 251 AND (n%1000)+1 <= 300 THEN 6
		WHEN (n%1000)+1 >= 301 AND (n%1000)+1 <= 350 THEN 7
		WHEN (n%1000)+1 >= 351 AND (n%1000)+1 <= 400 THEN 8
		WHEN (n%1000)+1 >= 401 AND (n%1000)+1 <= 450 THEN 9
		WHEN (n%1000)+1 >= 451 AND (n%1000)+1 <= 500 THEN 10
		WHEN (n%1000)+1 >= 501 AND (n%1000)+1 <= 550 THEN 11
		WHEN (n%1000)+1 >= 551 AND (n%1000)+1 <= 600 THEN 12
		WHEN (n%1000)+1 >= 601 AND (n%1000)+1 <= 650 THEN 13
		WHEN (n%1000)+1 >= 651 AND (n%1000)+1 <= 700 THEN 14
		WHEN (n%1000)+1 >= 701 AND (n%1000)+1 <= 750 THEN 15
		WHEN (n%1000)+1 >= 751 AND (n%1000)+1 <= 800 THEN 16
		WHEN (n%1000)+1 >= 801 AND (n%1000)+1 <= 850 THEN 17
		WHEN (n%1000)+1 >= 851 AND (n%1000)+1 <= 900 THEN 18
		WHEN (n%1000)+1 >= 901 AND (n%1000)+1 <= 950 THEN 19
		WHEN (n%1000)+1 >= 951 AND (n%1000)+1 <= 1000 THEN 20
		--WHEN (n%525)+1 >= 501 AND (n%525)+1 <= 526 THEN 21
		ELSE 0
	END as varchar(40)) + '@admin.com' as usermail,

	--fingerprint date
	CAST('2015-01-01' as varchar(15)) as fingerprint_date,

	--department
	'D_0' + CAST(
		CASE 
			WHEN (n%1000)+1 >= 1 AND (n%1000)+1 <= 333 THEN 1
			WHEN (n%1000)+1 >= 334 AND (n%1000)+1 <= 666 THEN 2
			WHEN (n%1000)+1 >= 667 AND (n%1000)+1 <= 1000 THEN 3
			ELSE 0
	END as varchar(28)) as organization

	FROM A
)   --,

--datatable AS(
	SELECT	id,
			usermail,
			fingerprint_date,
			organization
	FROM finger
--)
	