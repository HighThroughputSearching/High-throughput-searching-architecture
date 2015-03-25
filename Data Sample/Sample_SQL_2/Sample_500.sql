WITH A AS (
	SELECT TOP (500) n = CONVERT(INT, ROW_NUMBER() OVER (ORDER BY s1.[object_id]))
	FROM sys.all_objects AS s1 CROSS JOIN sys.all_objects AS s2
),

finger AS (
	SELECT

	--ID
	n as id,

	--User email
	CAST(
	CASE 
		WHEN (n%500)+1 >= 1 AND (n%500)+1 <= 25 THEN 1
		WHEN (n%500)+1 >= 26 AND (n%500)+1 <= 50 THEN 2
		WHEN (n%500)+1 >= 51 AND (n%500)+1 <= 75 THEN 3
		WHEN (n%500)+1 >= 76 AND (n%500)+1 <= 100 THEN 4
		WHEN (n%500)+1 >= 101 AND (n%500)+1 <= 125 THEN 5
		WHEN (n%500)+1 >= 126 AND (n%500)+1 <= 150 THEN 6
		WHEN (n%500)+1 >= 151 AND (n%500)+1 <= 175 THEN 7
		WHEN (n%500)+1 >= 176 AND (n%500)+1 <= 200 THEN 8
		WHEN (n%500)+1 >= 201 AND (n%500)+1 <= 225 THEN 9
		WHEN (n%500)+1 >= 226 AND (n%500)+1 <= 250 THEN 10
		WHEN (n%500)+1 >= 251 AND (n%500)+1 <= 275 THEN 11
		WHEN (n%500)+1 >= 276 AND (n%500)+1 <= 300 THEN 12
		WHEN (n%500)+1 >= 301 AND (n%500)+1 <= 325 THEN 13
		WHEN (n%500)+1 >= 326 AND (n%500)+1 <= 350 THEN 14
		WHEN (n%500)+1 >= 351 AND (n%500)+1 <= 375 THEN 15
		WHEN (n%500)+1 >= 376 AND (n%500)+1 <= 400 THEN 16
		WHEN (n%500)+1 >= 401 AND (n%500)+1 <= 425 THEN 17
		WHEN (n%500)+1 >= 426 AND (n%500)+1 <= 450 THEN 18
		WHEN (n%500)+1 >= 451 AND (n%500)+1 <= 475 THEN 19
		WHEN (n%500)+1 >= 476 AND (n%500)+1 <= 500 THEN 20
		--WHEN (n%525)+1 >= 501 AND (n%525)+1 <= 526 THEN 21
		ELSE 0
	END as varchar(40)) + '@admin.com' as usermail,
	
	--fingerprint date
	CAST('2015-01-01' as varchar(15)) as fingerprint_date,

	--department
	'D_0' + CAST(
		CASE 
			WHEN (n%500)+1 >= 1 AND (n%500)+1 <= 167 THEN 1
			WHEN (n%500)+1 >= 168 AND (n%500)+1 <= 335 THEN 2
			WHEN (n%500)+1 >= 336 AND (n%500)+1 <= 500 THEN 3
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
	