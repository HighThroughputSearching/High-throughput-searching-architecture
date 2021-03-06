WITH A AS (
	SELECT TOP (6000) n = CONVERT(INT, ROW_NUMBER() OVER (ORDER BY s1.[object_id]))
	FROM sys.all_objects AS s1 CROSS JOIN sys.all_objects AS s2
),

finger AS (
	SELECT

	--ID
	n as id,

	--User email
	CAST(
	CASE 
		WHEN (n%6000)+1 >= 1 AND (n%6000)+1 <= 300 THEN 1
		WHEN (n%6000)+1 >= 301 AND (n%6000)+1 <= 600 THEN 2
		WHEN (n%6000)+1 >= 601 AND (n%6000)+1 <= 900 THEN 3
		WHEN (n%6000)+1 >= 901 AND (n%6000)+1 <= 1200 THEN 4
		WHEN (n%6000)+1 >= 1201 AND (n%6000)+1 <= 1500 THEN 5
		WHEN (n%6000)+1 >= 1501 AND (n%6000)+1 <= 1800 THEN 6
		WHEN (n%6000)+1 >= 1801 AND (n%6000)+1 <= 2100 THEN 7
		WHEN (n%6000)+1 >= 2101 AND (n%6000)+1 <= 2400 THEN 8
		WHEN (n%6000)+1 >= 2401 AND (n%6000)+1 <= 2700 THEN 9
		WHEN (n%6000)+1 >= 2701 AND (n%6000)+1 <= 3000 THEN 10
		WHEN (n%6000)+1 >= 3001 AND (n%6000)+1 <= 3300 THEN 11
		WHEN (n%6000)+1 >= 3301 AND (n%6000)+1 <= 3600 THEN 12
		WHEN (n%6000)+1 >= 3601 AND (n%6000)+1 <= 3900 THEN 13
		WHEN (n%6000)+1 >= 3901 AND (n%6000)+1 <= 4200 THEN 14
		WHEN (n%6000)+1 >= 4201 AND (n%6000)+1 <= 4500 THEN 15
		WHEN (n%6000)+1 >= 4501 AND (n%6000)+1 <= 4800 THEN 16
		WHEN (n%6000)+1 >= 4801 AND (n%6000)+1 <= 5100 THEN 17
		WHEN (n%6000)+1 >= 5101 AND (n%6000)+1 <= 5400 THEN 18
		WHEN (n%6000)+1 >= 5401 AND (n%6000)+1 <= 5700 THEN 19
		WHEN (n%6000)+1 >= 5701 AND (n%6000)+1 <= 6000 THEN 20
		--WHEN (n%525)+1 >= 501 AND (n%525)+1 <= 526 THEN 21
		ELSE 0
	END as varchar(40)) + '@admin.com' as usermail,

	--fingerprint date
	CAST('2015-01-01' as varchar(15)) as fingerprint_date,

	--organization
	'0' + CAST(
		CASE 
			WHEN (n%6000)+1 >= 1 AND (n%6000)+1 <= 2000 THEN 1
			WHEN (n%6000)+1 >= 2001 AND (n%6000)+1 <= 4000 THEN 2
			WHEN (n%6000)+1 >= 4001 AND (n%6000)+1 <= 6000 THEN 3
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
	