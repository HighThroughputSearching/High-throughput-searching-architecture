WITH A AS (
	SELECT TOP (4000) n = CONVERT(INT, ROW_NUMBER() OVER (ORDER BY s1.[object_id]))
	FROM sys.all_objects AS s1 CROSS JOIN sys.all_objects AS s2
),

finger AS (
	SELECT

	--ID
	n as id,

	--User email
	CAST(
	CASE 
		WHEN (n%4000)+1 >= 1 AND (n%4000)+1 <= 200 THEN 1
		WHEN (n%4000)+1 >= 201 AND (n%4000)+1 <= 400 THEN 2
		WHEN (n%4000)+1 >= 401 AND (n%4000)+1 <= 600 THEN 3
		WHEN (n%4000)+1 >= 601 AND (n%4000)+1 <= 700 THEN 4
		WHEN (n%4000)+1 >= 701 AND (n%4000)+1 <= 1000 THEN 5
		WHEN (n%4000)+1 >= 1001 AND (n%4000)+1 <= 1200 THEN 6
		WHEN (n%4000)+1 >= 1201 AND (n%4000)+1 <= 1400 THEN 7
		WHEN (n%4000)+1 >= 1401 AND (n%4000)+1 <= 1600 THEN 8
		WHEN (n%4000)+1 >= 1601 AND (n%4000)+1 <= 1800 THEN 9
		WHEN (n%4000)+1 >= 1801 AND (n%4000)+1 <= 2000 THEN 10
		WHEN (n%4000)+1 >= 2001 AND (n%4000)+1 <= 2200 THEN 11
		WHEN (n%4000)+1 >= 2201 AND (n%4000)+1 <= 2400 THEN 12
		WHEN (n%4000)+1 >= 2401 AND (n%4000)+1 <= 2600 THEN 13
		WHEN (n%4000)+1 >= 2601 AND (n%4000)+1 <= 2800 THEN 14
		WHEN (n%4000)+1 >= 2801 AND (n%4000)+1 <= 3000 THEN 15
		WHEN (n%4000)+1 >= 3001 AND (n%4000)+1 <= 3200 THEN 16
		WHEN (n%4000)+1 >= 3201 AND (n%4000)+1 <= 3400 THEN 17
		WHEN (n%4000)+1 >= 3401 AND (n%4000)+1 <= 3600 THEN 18
		WHEN (n%4000)+1 >= 3601 AND (n%4000)+1 <= 3800 THEN 19
		WHEN (n%4000)+1 >= 3801 AND (n%4000)+1 <= 4000 THEN 20
		--WHEN (n%525)+1 >= 501 AND (n%525)+1 <= 526 THEN 21
		ELSE 0
	END as varchar(40)) + '@admin.com' as usermail,

	--fingerprint date
	CAST('2015-01-01' as varchar(15)) as fingerprint_date,

	--organization
	'0' + CAST(
		CASE 
			WHEN (n%4000)+1 >= 1 AND (n%4000)+1 <= 1333 THEN 1
			WHEN (n%4000)+1 >= 1334 AND (n%4000)+1 <= 2666 THEN 2
			WHEN (n%4000)+1 >= 2667 AND (n%4000)+1 <= 4000 THEN 3
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
	