WITH A AS (
	SELECT TOP (5000) n = CONVERT(INT, ROW_NUMBER() OVER (ORDER BY s1.[object_id]))
	FROM sys.all_objects AS s1 CROSS JOIN sys.all_objects AS s2
),

finger AS (
	SELECT

	--ID
	n as id,

	--User email
	CAST(
	CASE 
		WHEN (n%5000)+1 >= 1 AND (n%5000)+1 <= 250 THEN 1
		WHEN (n%5000)+1 >= 251 AND (n%5000)+1 <= 500 THEN 2
		WHEN (n%5000)+1 >= 501 AND (n%5000)+1 <= 750 THEN 3
		WHEN (n%5000)+1 >= 751 AND (n%5000)+1 <= 1000 THEN 4
		WHEN (n%5000)+1 >= 1001 AND (n%5000)+1 <= 1250 THEN 5
		WHEN (n%5000)+1 >= 1251 AND (n%5000)+1 <= 1500 THEN 6
		WHEN (n%5000)+1 >= 1501 AND (n%5000)+1 <= 1750 THEN 7
		WHEN (n%5000)+1 >= 1751 AND (n%5000)+1 <= 2000 THEN 8
		WHEN (n%5000)+1 >= 2001 AND (n%5000)+1 <= 2250 THEN 9
		WHEN (n%5000)+1 >= 2251 AND (n%5000)+1 <= 2500 THEN 10
		WHEN (n%5000)+1 >= 2501 AND (n%5000)+1 <= 2750 THEN 11
		WHEN (n%5000)+1 >= 2751 AND (n%5000)+1 <= 3000 THEN 12
		WHEN (n%5000)+1 >= 3001 AND (n%5000)+1 <= 3250 THEN 13
		WHEN (n%5000)+1 >= 3251 AND (n%5000)+1 <= 3500 THEN 14
		WHEN (n%5000)+1 >= 3501 AND (n%5000)+1 <= 3750 THEN 15
		WHEN (n%5000)+1 >= 3751 AND (n%5000)+1 <= 4000 THEN 16
		WHEN (n%5000)+1 >= 4001 AND (n%5000)+1 <= 4250 THEN 17
		WHEN (n%5000)+1 >= 4251 AND (n%5000)+1 <= 4500 THEN 18
		WHEN (n%5000)+1 >= 4501 AND (n%5000)+1 <= 4750 THEN 19
		WHEN (n%5000)+1 >= 4751 AND (n%5000)+1 <= 5000 THEN 20
		--WHEN (n%525)+1 >= 501 AND (n%525)+1 <= 526 THEN 21
		ELSE 0
	END as varchar(40)) + '@admin.com' as usermail,

	--fingerprint date
	CAST('2015-01-01' as varchar(15)) as fingerprint_date,

	--organization
	'0' + CAST(
		CASE 
			WHEN (n%5000)+1 >= 1 AND (n%5000)+1 <= 1666 THEN 1
			WHEN (n%5000)+1 >= 1667 AND (n%5000)+1 <= 3332 THEN 2
			WHEN (n%5000)+1 >= 3333 AND (n%5000)+1 <= 5000 THEN 3
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
	