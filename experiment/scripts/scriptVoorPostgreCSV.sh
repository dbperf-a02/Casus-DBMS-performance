
#!/bin/bash
	# load csv files into postgreSQL database

	function load_csv {
			local csv_path=$1
			local file="${csv_path##*/}"
			local table_name="${file%%.*}"

			sudo psql -U dbo -d dbo -c "\copy ${table_name} FROM '${csv_path}' DELIMITER ';' CSV HEADER;";
	}

	dir=/vagrant/data

	for file in "${dir}"/*.csv; do
			load_csv "${file}"
	done