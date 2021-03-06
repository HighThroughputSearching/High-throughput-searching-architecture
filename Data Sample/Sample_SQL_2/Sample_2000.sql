WITH A AS (
	SELECT TOP (2000) n = CONVERT(INT, ROW_NUMBER() OVER (ORDER BY s1.[object_id]))
	FROM sys.all_objects AS s1 CROSS JOIN sys.all_objects AS s2
),

finger AS (
	SELECT

	--ID
	n as id,

	--User email
	CAST(
	CASE 
		WHEN (n%2000)+1 >= 1 AND (n%2000)+1 <= 100 THEN 1
		WHEN (n%2000)+1 >= 101 AND (n%2000)+1 <= 200 THEN 2
		WHEN (n%2000)+1 >= 201 AND (n%2000)+1 <= 300 THEN 3
		WHEN (n%2000)+1 >= 301 AND (n%2000)+1 <= 400 THEN 4
		WHEN (n%2000)+1 >= 401 AND (n%2000)+1 <= 500 THEN 5
		WHEN (n%2000)+1 >= 501 AND (n%2000)+1 <= 600 THEN 6
		WHEN (n%2000)+1 >= 601 AND (n%2000)+1 <= 700 THEN 7
		WHEN (n%2000)+1 >= 701 AND (n%2000)+1 <= 800 THEN 8
		WHEN (n%2000)+1 >= 801 AND (n%2000)+1 <= 900 THEN 9
		WHEN (n%2000)+1 >= 901 AND (n%2000)+1 <= 1000 THEN 10
		WHEN (n%2000)+1 >= 1001 AND (n%2000)+1 <= 1100 THEN 11
		WHEN (n%2000)+1 >= 1101 AND (n%2000)+1 <= 1200 THEN 12
		WHEN (n%2000)+1 >= 1201 AND (n%2000)+1 <= 1300 THEN 13
		WHEN (n%2000)+1 >= 1301 AND (n%2000)+1 <= 1400 THEN 14
		WHEN (n%2000)+1 >= 1401 AND (n%2000)+1 <= 1500 THEN 15
		WHEN (n%2000)+1 >= 1501 AND (n%2000)+1 <= 1600 THEN 16
		WHEN (n%2000)+1 >= 1601 AND (n%2000)+1 <= 1700 THEN 17
		WHEN (n%2000)+1 >= 1701 AND (n%2000)+1 <= 1800 THEN 18
		WHEN (n%2000)+1 >= 1801 AND (n%2000)+1 <= 1900 THEN 19
		WHEN (n%2000)+1 >= 1901 AND (n%2000)+1 <= 2000 THEN 20
		--WHEN (n%525)+1 >= 501 AND (n%525)+1 <= 526 THEN 21
		ELSE 0
	END as varchar(40)) + '@admin.com' as usermail,

	--fingerprint date
	CAST('2015-01-01' as varchar(15)) as fingerprint_date,

	--department
	'0' + CAST(
		CASE 
			WHEN (n%2000)+1 >= 1 AND (n%2000)+1 <= 666 THEN 1
			WHEN (n%2000)+1 >= 667 AND (n%2000)+1 <= 1332 THEN 2
			WHEN (n%2000)+1 >= 1333 AND (n%2000)+1 <= 2000 THEN 3
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
	