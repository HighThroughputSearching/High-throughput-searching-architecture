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

	--department
	'D_' + CAST(
		CASE 
			WHEN (n%8000)+1 >= 1 AND (n%8000)+1 <= 1600 THEN 1
			WHEN (n%8000)+1 >= 1601 AND (n%8000)+1 <= 3200 THEN 2
			WHEN (n%8000)+1 >= 3201 AND (n%8000)+1 <= 4800 THEN 3
			WHEN (n%8000)+1 >= 4801 AND (n%8000)+1 <= 6400 THEN 4
			WHEN (n%8000)+1 >= 6401 AND (n%8000)+1 <= 8000 THEN 5
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
	END as varchar(22)) as officer_name,

	--officer surname
	'Offsurname_' + 
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
	