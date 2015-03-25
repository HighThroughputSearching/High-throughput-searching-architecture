WITH A AS (
	SELECT TOP (8000) n = CONVERT(INT, ROW_NUMBER() OVER (ORDER BY s1.[object_id]))
	FROM sys.all_objects AS s1 CROSS JOIN sys.all_objects AS s2
),

finger AS (
	SELECT

	--ID
	n as id,

	--User email
	CAST(
	CASE 
		WHEN (n%8000)+1 >= 1 AND (n%8000)+1 <= 400 THEN 1
		WHEN (n%8000)+1 >= 401 AND (n%8000)+1 <= 800 THEN 2
		WHEN (n%8000)+1 >= 801 AND (n%8000)+1 <= 1200 THEN 3
		WHEN (n%8000)+1 >= 1201 AND (n%8000)+1 <= 1600 THEN 4
		WHEN (n%8000)+1 >= 1601 AND (n%8000)+1 <= 2000 THEN 5
		WHEN (n%8000)+1 >= 2001 AND (n%8000)+1 <= 2400 THEN 6
		WHEN (n%8000)+1 >= 2401 AND (n%8000)+1 <= 2800 THEN 7
		WHEN (n%8000)+1 >= 2801 AND (n%8000)+1 <= 3200 THEN 8
		WHEN (n%8000)+1 >= 3201 AND (n%8000)+1 <= 3600 THEN 9
		WHEN (n%8000)+1 >= 3601 AND (n%8000)+1 <= 4000 THEN 10
		WHEN (n%8000)+1 >= 4001 AND (n%8000)+1 <= 4400 THEN 11
		WHEN (n%8000)+1 >= 4401 AND (n%8000)+1 <= 4800 THEN 12
		WHEN (n%8000)+1 >= 4801 AND (n%8000)+1 <= 5200 THEN 13
		WHEN (n%8000)+1 >= 5201 AND (n%8000)+1 <= 5600 THEN 14
		WHEN (n%8000)+1 >= 5601 AND (n%8000)+1 <= 6000 THEN 15
		WHEN (n%8000)+1 >= 6001 AND (n%8000)+1 <= 6400 THEN 16
		WHEN (n%8000)+1 >= 6401 AND (n%8000)+1 <= 6800 THEN 17
		WHEN (n%8000)+1 >= 6801 AND (n%8000)+1 <= 7200 THEN 18
		WHEN (n%8000)+1 >= 7201 AND (n%8000)+1 <= 7600 THEN 19
		WHEN (n%8000)+1 >= 7601 AND (n%8000)+1 <= 8000 THEN 20
		--WHEN (n%525)+1 >= 501 AND (n%525)+1 <= 526 THEN 21
		ELSE 0
	END as varchar(40)) + '@admin.com' as usermail,

	--fingerprint date
	CAST('2015-01-01' as varchar(15)) as fingerprint_date,

	--organization
	'0' + CAST(
		CASE 
			WHEN (n%8000)+1 >= 1 AND (n%8000)+1 <= 2666 THEN 1
			WHEN (n%8000)+1 >= 2667 AND (n%8000)+1 <= 5333 THEN 2
			WHEN (n%8000)+1 >= 5334 AND (n%8000)+1 <= 8000 THEN 3
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
	