WITH A AS (
	SELECT TOP (9000) n = CONVERT(INT, ROW_NUMBER() OVER (ORDER BY s1.[object_id]))
	FROM sys.all_objects AS s1 CROSS JOIN sys.all_objects AS s2
),

finger AS (
	SELECT

	--ID
	n as id,

	--User email
	CAST(
	CASE 
		WHEN (n%9000)+1 >= 1 AND (n%9000)+1 <= 450 THEN 1
		WHEN (n%9000)+1 >= 450 AND (n%9000)+1 <= 900 THEN 2
		WHEN (n%9000)+1 >= 900 AND (n%9000)+1 <= 1350 THEN 3
		WHEN (n%9000)+1 >= 1350 AND (n%9000)+1 <= 1800 THEN 4
		WHEN (n%9000)+1 >= 1800 AND (n%9000)+1 <= 2250 THEN 5
		WHEN (n%9000)+1 >= 2250 AND (n%9000)+1 <= 2700 THEN 6
		WHEN (n%9000)+1 >= 2700 AND (n%9000)+1 <= 3150 THEN 7
		WHEN (n%9000)+1 >= 3150 AND (n%9000)+1 <= 3600 THEN 8
		WHEN (n%9000)+1 >= 3600 AND (n%9000)+1 <= 4050 THEN 9
		WHEN (n%9000)+1 >= 4050 AND (n%9000)+1 <= 4500 THEN 10
		WHEN (n%9000)+1 >= 4500 AND (n%9000)+1 <= 4950 THEN 11
		WHEN (n%9000)+1 >= 4950 AND (n%9000)+1 <= 5400 THEN 12
		WHEN (n%9000)+1 >= 5400 AND (n%9000)+1 <= 5850 THEN 13
		WHEN (n%9000)+1 >= 5850 AND (n%9000)+1 <= 6300 THEN 14
		WHEN (n%9000)+1 >= 6300 AND (n%9000)+1 <= 6750 THEN 15
		WHEN (n%9000)+1 >= 6750 AND (n%9000)+1 <= 7200 THEN 16
		WHEN (n%9000)+1 >= 7200 AND (n%9000)+1 <= 7650 THEN 17
		WHEN (n%9000)+1 >= 7650 AND (n%9000)+1 <= 8100 THEN 18
		WHEN (n%9000)+1 >= 8100 AND (n%9000)+1 <= 8550 THEN 19
		WHEN (n%9000)+1 >= 8550 AND (n%9000)+1 <= 9000 THEN 20
		--WHEN (n%525)+1 >= 501 AND (n%525)+1 <= 526 THEN 21
		ELSE 0
	END as varchar(40)) + '@admin.com' as usermail,

	--fingerprint date
	CAST('2015-01-01' as varchar(15)) as fingerprint_date,

	--department
	'D_' + CAST(
		CASE 
			WHEN (n%9000)+1 >= 1 AND (n%9000)+1 <= 1800 THEN 1
			WHEN (n%9000)+1 >= 1801 AND (n%9000)+1 <= 3600 THEN 2
			WHEN (n%9000)+1 >= 3601 AND (n%9000)+1 <= 5400 THEN 3
			WHEN (n%9000)+1 >= 5401 AND (n%9000)+1 <= 7200 THEN 4
			WHEN (n%9000)+1 >= 7201 AND (n%9000)+1 <= 9000 THEN 5
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
		WHEN (n%9000)+1 >= 1 AND (n%9000)+1 <= 450 THEN 1
		WHEN (n%9000)+1 >= 450 AND (n%9000)+1 <= 900 THEN 2
		WHEN (n%9000)+1 >= 900 AND (n%9000)+1 <= 1350 THEN 3
		WHEN (n%9000)+1 >= 1350 AND (n%9000)+1 <= 1800 THEN 4
		WHEN (n%9000)+1 >= 1800 AND (n%9000)+1 <= 2250 THEN 5
		WHEN (n%9000)+1 >= 2250 AND (n%9000)+1 <= 2700 THEN 6
		WHEN (n%9000)+1 >= 2700 AND (n%9000)+1 <= 3150 THEN 7
		WHEN (n%9000)+1 >= 3150 AND (n%9000)+1 <= 3600 THEN 8
		WHEN (n%9000)+1 >= 3600 AND (n%9000)+1 <= 4050 THEN 9
		WHEN (n%9000)+1 >= 4050 AND (n%9000)+1 <= 4500 THEN 10
		WHEN (n%9000)+1 >= 4500 AND (n%9000)+1 <= 4950 THEN 11
		WHEN (n%9000)+1 >= 4950 AND (n%9000)+1 <= 5400 THEN 12
		WHEN (n%9000)+1 >= 5400 AND (n%9000)+1 <= 5850 THEN 13
		WHEN (n%9000)+1 >= 5850 AND (n%9000)+1 <= 6300 THEN 14
		WHEN (n%9000)+1 >= 6300 AND (n%9000)+1 <= 6750 THEN 15
		WHEN (n%9000)+1 >= 6750 AND (n%9000)+1 <= 7200 THEN 16
		WHEN (n%9000)+1 >= 7200 AND (n%9000)+1 <= 7650 THEN 17
		WHEN (n%9000)+1 >= 7650 AND (n%9000)+1 <= 8100 THEN 18
		WHEN (n%9000)+1 >= 8100 AND (n%9000)+1 <= 8550 THEN 19
		WHEN (n%9000)+1 >= 8550 AND (n%9000)+1 <= 9000 THEN 20
		--WHEN (n%525)+1 >= 501 AND (n%525)+1 <= 526 THEN 21
		ELSE 0
	END as varchar(22)) as officer_name,

	--officer surname
	'Offsurname_' + 
	CAST(
	CASE 
		WHEN (n%9000)+1 >= 1 AND (n%9000)+1 <= 450 THEN 1
		WHEN (n%9000)+1 >= 450 AND (n%9000)+1 <= 900 THEN 2
		WHEN (n%9000)+1 >= 900 AND (n%9000)+1 <= 1350 THEN 3
		WHEN (n%9000)+1 >= 1350 AND (n%9000)+1 <= 1800 THEN 4
		WHEN (n%9000)+1 >= 1800 AND (n%9000)+1 <= 2250 THEN 5
		WHEN (n%9000)+1 >= 2250 AND (n%9000)+1 <= 2700 THEN 6
		WHEN (n%9000)+1 >= 2700 AND (n%9000)+1 <= 3150 THEN 7
		WHEN (n%9000)+1 >= 3150 AND (n%9000)+1 <= 3600 THEN 8
		WHEN (n%9000)+1 >= 3600 AND (n%9000)+1 <= 4050 THEN 9
		WHEN (n%9000)+1 >= 4050 AND (n%9000)+1 <= 4500 THEN 10
		WHEN (n%9000)+1 >= 4500 AND (n%9000)+1 <= 4950 THEN 11
		WHEN (n%9000)+1 >= 4950 AND (n%9000)+1 <= 5400 THEN 12
		WHEN (n%9000)+1 >= 5400 AND (n%9000)+1 <= 5850 THEN 13
		WHEN (n%9000)+1 >= 5850 AND (n%9000)+1 <= 6300 THEN 14
		WHEN (n%9000)+1 >= 6300 AND (n%9000)+1 <= 6750 THEN 15
		WHEN (n%9000)+1 >= 6750 AND (n%9000)+1 <= 7200 THEN 16
		WHEN (n%9000)+1 >= 7200 AND (n%9000)+1 <= 7650 THEN 17
		WHEN (n%9000)+1 >= 7650 AND (n%9000)+1 <= 8100 THEN 18
		WHEN (n%9000)+1 >= 8100 AND (n%9000)+1 <= 8550 THEN 19
		WHEN (n%9000)+1 >= 8550 AND (n%9000)+1 <= 9000 THEN 20
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
	