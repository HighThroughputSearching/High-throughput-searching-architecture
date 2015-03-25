WITH A AS (
	SELECT TOP (7000) n = CONVERT(INT, ROW_NUMBER() OVER (ORDER BY s1.[object_id]))
	FROM sys.all_objects AS s1 CROSS JOIN sys.all_objects AS s2
),

finger AS (
	SELECT

	--ID
	n as id,

	--User email
	CAST(
	CASE 
		WHEN (n%7000)+1 >= 1 AND (n%7000)+1 <= 350 THEN 1
		WHEN (n%7000)+1 >= 350 AND (n%7000)+1 <= 700 THEN 2
		WHEN (n%7000)+1 >= 700 AND (n%7000)+1 <= 1050 THEN 3
		WHEN (n%7000)+1 >= 1050 AND (n%7000)+1 <= 1400 THEN 4
		WHEN (n%7000)+1 >= 1400 AND (n%7000)+1 <= 1750 THEN 5
		WHEN (n%7000)+1 >= 1750 AND (n%7000)+1 <= 2100 THEN 6
		WHEN (n%7000)+1 >= 2100 AND (n%7000)+1 <= 2450 THEN 7
		WHEN (n%7000)+1 >= 2450 AND (n%7000)+1 <= 2800 THEN 8
		WHEN (n%7000)+1 >= 2800 AND (n%7000)+1 <= 3150 THEN 9
		WHEN (n%7000)+1 >= 3150 AND (n%7000)+1 <= 3500 THEN 10
		WHEN (n%7000)+1 >= 3500 AND (n%7000)+1 <= 3850 THEN 11
		WHEN (n%7000)+1 >= 3850 AND (n%7000)+1 <= 4200 THEN 12
		WHEN (n%7000)+1 >= 4200 AND (n%7000)+1 <= 4550 THEN 13
		WHEN (n%7000)+1 >= 4550 AND (n%7000)+1 <= 4900 THEN 14
		WHEN (n%7000)+1 >= 4900 AND (n%7000)+1 <= 5250 THEN 15
		WHEN (n%7000)+1 >= 5250 AND (n%7000)+1 <= 5600 THEN 16
		WHEN (n%7000)+1 >= 5600 AND (n%7000)+1 <= 5950 THEN 17
		WHEN (n%7000)+1 >= 5950 AND (n%7000)+1 <= 6300 THEN 18
		WHEN (n%7000)+1 >= 6300 AND (n%7000)+1 <= 6650 THEN 19
		WHEN (n%7000)+1 >= 6650 AND (n%7000)+1 <= 7000 THEN 20
		--WHEN (n%525)+1 >= 501 AND (n%525)+1 <= 526 THEN 21
		ELSE 0
	END as varchar(40)) + '@admin.com' as usermail,

	--fingerprint date
	CAST('2015-01-01' as varchar(15)) as fingerprint_date,

	--department
	'D_' + CAST(
		CASE 
			WHEN (n%7000)+1 >= 1 AND (n%7000)+1 <= 1400 THEN 1
			WHEN (n%7000)+1 >= 1401 AND (n%7000)+1 <= 2800 THEN 2
			WHEN (n%7000)+1 >= 2801 AND (n%7000)+1 <= 4200 THEN 3
			WHEN (n%7000)+1 >= 4201 AND (n%7000)+1 <= 5600 THEN 4
			WHEN (n%7000)+1 >= 5601 AND (n%7000)+1 <= 7000 THEN 5
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
		WHEN (n%7000)+1 >= 1 AND (n%7000)+1 <= 350 THEN 1
		WHEN (n%7000)+1 >= 350 AND (n%7000)+1 <= 700 THEN 2
		WHEN (n%7000)+1 >= 700 AND (n%7000)+1 <= 1050 THEN 3
		WHEN (n%7000)+1 >= 1050 AND (n%7000)+1 <= 1400 THEN 4
		WHEN (n%7000)+1 >= 1400 AND (n%7000)+1 <= 1750 THEN 5
		WHEN (n%7000)+1 >= 1750 AND (n%7000)+1 <= 2100 THEN 6
		WHEN (n%7000)+1 >= 2100 AND (n%7000)+1 <= 2450 THEN 7
		WHEN (n%7000)+1 >= 2450 AND (n%7000)+1 <= 2800 THEN 8
		WHEN (n%7000)+1 >= 2800 AND (n%7000)+1 <= 3150 THEN 9
		WHEN (n%7000)+1 >= 3150 AND (n%7000)+1 <= 3500 THEN 10
		WHEN (n%7000)+1 >= 3500 AND (n%7000)+1 <= 3850 THEN 11
		WHEN (n%7000)+1 >= 3850 AND (n%7000)+1 <= 4200 THEN 12
		WHEN (n%7000)+1 >= 4200 AND (n%7000)+1 <= 4550 THEN 13
		WHEN (n%7000)+1 >= 4550 AND (n%7000)+1 <= 4900 THEN 14
		WHEN (n%7000)+1 >= 4900 AND (n%7000)+1 <= 5250 THEN 15
		WHEN (n%7000)+1 >= 5250 AND (n%7000)+1 <= 5600 THEN 16
		WHEN (n%7000)+1 >= 5600 AND (n%7000)+1 <= 5950 THEN 17
		WHEN (n%7000)+1 >= 5950 AND (n%7000)+1 <= 6300 THEN 18
		WHEN (n%7000)+1 >= 6300 AND (n%7000)+1 <= 6650 THEN 19
		WHEN (n%7000)+1 >= 6650 AND (n%7000)+1 <= 7000 THEN 20
		--WHEN (n%525)+1 >= 501 AND (n%525)+1 <= 526 THEN 21
		ELSE 0
	END as varchar(22)) as officer_name,

	--officer surname
	'Offsurname_' + 
	CAST(
	CASE 
		WHEN (n%7000)+1 >= 1 AND (n%7000)+1 <= 350 THEN 1
		WHEN (n%7000)+1 >= 350 AND (n%7000)+1 <= 700 THEN 2
		WHEN (n%7000)+1 >= 700 AND (n%7000)+1 <= 1050 THEN 3
		WHEN (n%7000)+1 >= 1050 AND (n%7000)+1 <= 1400 THEN 4
		WHEN (n%7000)+1 >= 1400 AND (n%7000)+1 <= 1750 THEN 5
		WHEN (n%7000)+1 >= 1750 AND (n%7000)+1 <= 2100 THEN 6
		WHEN (n%7000)+1 >= 2100 AND (n%7000)+1 <= 2450 THEN 7
		WHEN (n%7000)+1 >= 2450 AND (n%7000)+1 <= 2800 THEN 8
		WHEN (n%7000)+1 >= 2800 AND (n%7000)+1 <= 3150 THEN 9
		WHEN (n%7000)+1 >= 3150 AND (n%7000)+1 <= 3500 THEN 10
		WHEN (n%7000)+1 >= 3500 AND (n%7000)+1 <= 3850 THEN 11
		WHEN (n%7000)+1 >= 3850 AND (n%7000)+1 <= 4200 THEN 12
		WHEN (n%7000)+1 >= 4200 AND (n%7000)+1 <= 4550 THEN 13
		WHEN (n%7000)+1 >= 4550 AND (n%7000)+1 <= 4900 THEN 14
		WHEN (n%7000)+1 >= 4900 AND (n%7000)+1 <= 5250 THEN 15
		WHEN (n%7000)+1 >= 5250 AND (n%7000)+1 <= 5600 THEN 16
		WHEN (n%7000)+1 >= 5600 AND (n%7000)+1 <= 5950 THEN 17
		WHEN (n%7000)+1 >= 5950 AND (n%7000)+1 <= 6300 THEN 18
		WHEN (n%7000)+1 >= 6300 AND (n%7000)+1 <= 6650 THEN 19
		WHEN (n%7000)+1 >= 6650 AND (n%7000)+1 <= 7000 THEN 20
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
	