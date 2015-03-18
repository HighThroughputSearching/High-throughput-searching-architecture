WITH A AS (
	SELECT TOP (10000) n = CONVERT(INT, ROW_NUMBER() OVER (ORDER BY s1.[object_id]))
	FROM sys.all_objects AS s1 CROSS JOIN sys.all_objects AS s2
),

finger AS (
	SELECT

	--ID
	n as id,

	--User email
	CAST(
	CASE 
		WHEN (n%10000)+1 >= 1 AND (n%10000)+1 <= 500 THEN 1
		WHEN (n%10000)+1 >= 501 AND (n%10000)+1 <= 1000 THEN 2
		WHEN (n%10000)+1 >= 1001 AND (n%10000)+1 <= 1500 THEN 3
		WHEN (n%10000)+1 >= 1501 AND (n%10000)+1 <= 2000 THEN 4
		WHEN (n%10000)+1 >= 2001 AND (n%10000)+1 <= 2500 THEN 5
		WHEN (n%10000)+1 >= 2501 AND (n%10000)+1 <= 3000 THEN 6
		WHEN (n%10000)+1 >= 3001 AND (n%10000)+1 <= 3500 THEN 7
		WHEN (n%10000)+1 >= 3501 AND (n%10000)+1 <= 4000 THEN 8
		WHEN (n%10000)+1 >= 4001 AND (n%10000)+1 <= 4500 THEN 9
		WHEN (n%10000)+1 >= 4501 AND (n%10000)+1 <= 5000 THEN 10
		WHEN (n%10000)+1 >= 5001 AND (n%10000)+1 <= 5500 THEN 11
		WHEN (n%10000)+1 >= 5501 AND (n%10000)+1 <= 6000 THEN 12
		WHEN (n%10000)+1 >= 6001 AND (n%10000)+1 <= 6500 THEN 13
		WHEN (n%10000)+1 >= 6501 AND (n%10000)+1 <= 7000 THEN 14
		WHEN (n%10000)+1 >= 7001 AND (n%10000)+1 <= 7500 THEN 15
		WHEN (n%10000)+1 >= 7501 AND (n%10000)+1 <= 8000 THEN 16
		WHEN (n%10000)+1 >= 8001 AND (n%10000)+1 <= 8500 THEN 17
		WHEN (n%10000)+1 >= 8501 AND (n%10000)+1 <= 9000 THEN 18
		WHEN (n%10000)+1 >= 9001 AND (n%10000)+1 <= 9500 THEN 19
		WHEN (n%10000)+1 >= 9501 AND (n%10000)+1 <= 10000 THEN 20
		--WHEN (n%525)+1 >= 501 AND (n%525)+1 <= 526 THEN 21
		ELSE 0
	END as varchar(40)) + '@admin.com' as usermail,

	--fingerprint date
	CAST('2015-01-01' as varchar(15)) as fingerprint_date,

	--department
	'D_' + CAST(
		CASE 
			WHEN (n%10000)+1 >= 1 AND (n%10000)+1 <= 2000 THEN 1
			WHEN (n%10000)+1 >= 2001 AND (n%10000)+1 <= 4000 THEN 2
			WHEN (n%10000)+1 >= 4001 AND (n%10000)+1 <= 6000 THEN 3
			WHEN (n%10000)+1 >= 6001 AND (n%10000)+1 <= 8000 THEN 4
			WHEN (n%10000)+1 >= 8001 AND (n%10000)+1 <= 10000 THEN 5
			ELSE 0
	END as varchar(28)) as department,

	--criminal_sex
	CAST('male' as varchar(30)) as criminal_sex,

	--year of birth
	CAST('1990' as varchar(30)) as yearofbirth,

	--criminal name
	'Cname_' + CAST(n as varchar(24)) as criminal_name,

	--criminal surname
	'Csurname_' + CAST(n as varchar(21)) as criminal_surname,

	--officer_name
	'Offname_' + 
	CAST(
	CASE 
		WHEN (n%10000)+1 >= 1 AND (n%10000)+1 <= 500 THEN 1
		WHEN (n%10000)+1 >= 501 AND (n%10000)+1 <= 1000 THEN 2
		WHEN (n%10000)+1 >= 1001 AND (n%10000)+1 <= 1500 THEN 3
		WHEN (n%10000)+1 >= 1501 AND (n%10000)+1 <= 2000 THEN 4
		WHEN (n%10000)+1 >= 2001 AND (n%10000)+1 <= 2500 THEN 5
		WHEN (n%10000)+1 >= 2501 AND (n%10000)+1 <= 3000 THEN 6
		WHEN (n%10000)+1 >= 3001 AND (n%10000)+1 <= 3500 THEN 7
		WHEN (n%10000)+1 >= 3501 AND (n%10000)+1 <= 4000 THEN 8
		WHEN (n%10000)+1 >= 4001 AND (n%10000)+1 <= 4500 THEN 9
		WHEN (n%10000)+1 >= 4501 AND (n%10000)+1 <= 5000 THEN 10
		WHEN (n%10000)+1 >= 5001 AND (n%10000)+1 <= 5500 THEN 11
		WHEN (n%10000)+1 >= 5501 AND (n%10000)+1 <= 6000 THEN 12
		WHEN (n%10000)+1 >= 6001 AND (n%10000)+1 <= 6500 THEN 13
		WHEN (n%10000)+1 >= 6501 AND (n%10000)+1 <= 7000 THEN 14
		WHEN (n%10000)+1 >= 7001 AND (n%10000)+1 <= 7500 THEN 15
		WHEN (n%10000)+1 >= 7501 AND (n%10000)+1 <= 8000 THEN 16
		WHEN (n%10000)+1 >= 8001 AND (n%10000)+1 <= 8500 THEN 17
		WHEN (n%10000)+1 >= 8501 AND (n%10000)+1 <= 9000 THEN 18
		WHEN (n%10000)+1 >= 9001 AND (n%10000)+1 <= 9500 THEN 19
		WHEN (n%10000)+1 >= 9501 AND (n%10000)+1 <= 10000 THEN 20
		--WHEN (n%525)+1 >= 501 AND (n%525)+1 <= 526 THEN 21
		ELSE 0
	END as varchar(22)) as officer_name,

	--officer surname
	'Offsurname_' + 
	CAST(
	CASE 
		WHEN (n%10000)+1 >= 1 AND (n%10000)+1 <= 500 THEN 1
		WHEN (n%10000)+1 >= 501 AND (n%10000)+1 <= 1000 THEN 2
		WHEN (n%10000)+1 >= 1001 AND (n%10000)+1 <= 1500 THEN 3
		WHEN (n%10000)+1 >= 1501 AND (n%10000)+1 <= 2000 THEN 4
		WHEN (n%10000)+1 >= 2001 AND (n%10000)+1 <= 2500 THEN 5
		WHEN (n%10000)+1 >= 2501 AND (n%10000)+1 <= 3000 THEN 6
		WHEN (n%10000)+1 >= 3001 AND (n%10000)+1 <= 3500 THEN 7
		WHEN (n%10000)+1 >= 3501 AND (n%10000)+1 <= 4000 THEN 8
		WHEN (n%10000)+1 >= 4001 AND (n%10000)+1 <= 4500 THEN 9
		WHEN (n%10000)+1 >= 4501 AND (n%10000)+1 <= 5000 THEN 10
		WHEN (n%10000)+1 >= 5001 AND (n%10000)+1 <= 5500 THEN 11
		WHEN (n%10000)+1 >= 5501 AND (n%10000)+1 <= 6000 THEN 12
		WHEN (n%10000)+1 >= 6001 AND (n%10000)+1 <= 6500 THEN 13
		WHEN (n%10000)+1 >= 6501 AND (n%10000)+1 <= 7000 THEN 14
		WHEN (n%10000)+1 >= 7001 AND (n%10000)+1 <= 7500 THEN 15
		WHEN (n%10000)+1 >= 7501 AND (n%10000)+1 <= 8000 THEN 16
		WHEN (n%10000)+1 >= 8001 AND (n%10000)+1 <= 8500 THEN 17
		WHEN (n%10000)+1 >= 8501 AND (n%10000)+1 <= 9000 THEN 18
		WHEN (n%10000)+1 >= 9001 AND (n%10000)+1 <= 9500 THEN 19
		WHEN (n%10000)+1 >= 9501 AND (n%10000)+1 <= 10000 THEN 20
		--WHEN (n%525)+1 >= 501 AND (n%525)+1 <= 526 THEN 21
		ELSE 0
	END as varchar(19)) as officer_surname,

	-- history_number
	CAST('' as varchar(30)) as history_number,

	-- fingerprint_code
	CAST('' as varchar(30)) as fingerprint_code,

	-- other_code
	CAST('' as varchar(30)) as other_code
	FROM A
)   --,

--datatable AS(
	SELECT	id,
			usermail,
			fingerprint_date,
			department,
			criminal_sex,
			yearofbirth,
			criminal_name,
			criminal_surname,
			officer_name,
			officer_surname,
			history_number,
			fingerprint_code,
			other_code
	FROM finger
--)
	