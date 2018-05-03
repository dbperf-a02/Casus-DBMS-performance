-- -- The english verion of this text can be found in '[README_en.md](README_en.md)'. -- --

# Casus onderzoeksproces

Gebruik deze repository voor het bijhouden van alle informatie, code en resultaten van jullie mini-onderzoek rond performantie van databases. Gebruik [Markdown](https://guides.github.com/features/mastering-markdown/) voor verslagen, procedures, enz. (alle bestanden waar je anders Word voor zou gebruiken). Een sjabloon voor het artikel en een bestand voor de bibliografische databank is ook voorzien.

In [opstart.md](opstart.md) vind je instructies om aan de slag te gaan.

## Teamleden

| Naam     | Github                        | Email                               |
| :---     | :---                          | :---                                |
| student1 | <https://github.com/student1> | <mailto:student1@student.hogent.be> |
| student2 | <https://github.com/student2> | <mailto:student2@student.hogent.be> |
| student3 | <https://github.com/student3> | <mailto:student3@student.hogent.be> |
| student4 | <https://github.com/student4> | <mailto:student4@student.hogent.be> |

## Uitvoeren experimenten

Voeg later in dit document instructies toe die toelaten om jullie experimenten van begin (= opstarten VMs) tot einde (= analyse testresultaten) te reproduceren.

Laptop van Jari: Dell Inspiron 15 
Processor Intel(R) Core(TM) i7-6700HQ CPU @ 2.60GHz, 2601 MHz, 4 core('s), 8 logische processor(s). 
Ram Geïnstalleerd fysiek geheugen (RAM)	16,0 GB

Laptop van Robin: Lenovo ideapad 520
Processor	Intel(R) Core(TM) i7-7500U CPU @ 2.70GHz, 2904 MHz, 2 core('s), 4 logische processor(s)
Geïnstalleerd fysiek geheugen (RAM)	12,0 GB

Laptop van Frédéric: Asus UX510UXK
Intel(R) Core(TM) i7-7500U CPU @ 2.70GHz, 2904 MHz, 2 core('s), 4 logische processor(s)
Geïnstalleerd fysiek geheugen (RAM)	8,0 GB

### Opstart VM

1. Downloaden van repository taak (niet clonen).
2. Navigeren naar de map "experiment" (via git bash)
3. Door het commando "vagrant up" word de VM aangemaakt.
4. Als hij klaar is geeft u het commando "vagrant ssh".
5. Het script dat wij gemaakt hebben vereist een installatie van "time", dit moet als user root dus voert u het commando "su -" uit en het wachtwoord is "vagrant".
6. Om "time" te installeren voert u het commando "yum install time" uit en geeft u "y" in tot het installeert.
7 Als het klaar is mag u terug naar vagrant user gaan doormiddel van het commando "logout". 
8. Om het script uit te voeren moet u het in dezelfde map zetten als de vagrantfile.
9. Om het script te kunnen uitvoeren moet u eerst "cd /vagrant" uitvoeren zodat u in de juiste map bent.
10. Daar voert u het commando "bash script.sh" uit en wacht u tot het klaar is.
11. Ons script exporteert .csv bestanden, deze komen in dezelfde map terecht als de vagrant file.

### Rstudio berekeningen

Omdat ons script .csv bestanden exporteert gebruiken we volgend commando om het in te lezen in RStudio.

ResultQuery1 <- read.csv("~/Ho Gent/jaar 2/vakken/semester 2/Onderzoekstechnieken/opdracht/github opdracht/onderzoekstechnieken-casus-master/experiment/ResultQuery1.csv")

Als u niet exact weet welk pad u nodig heeft kan u ook via import dataset (textfile) -> navigeren naar bestand -> openen
Dan gaat RStudio in de console het volledige commando tonen dat het gebruikt heeft voor het bestand te importeren en dat gebruikt u dan om de andere bestanden in te laden door de naam aan te passen van de variabele en het bestand achteraan.

Om het dataframe vervolgens te bekijken gebruiken we het commando " View(ResultQuery1) " .
We willen ook de standaardvariatie dus daarvoor gebruiken we het commando " var(ResultQuery1) " .
Omdat we ook de boxplot ervan willen gebruiken we het commando " summary(ResultQuery1) " .
Als laatste willen we ook de standaard afwijking, maar onze csv heeft drie kolommen dus willen we eerst de kolom met effectieve tijden eruit halen. Daarvoor geven we het commando " x <- ResultQuery1[,"real"] ". Daarin is de "x" de variabele, ResultQuery1 de dataframe en "real" is de kolom die we willen.
Om vervolgens de standaar afwijking te laten berekenen geven we " sd(x) " in.

## Postgre installeren

Om postgre te installeren, voert u als root user (su -) dit commando uit :
  yum install https://download.postgresql.org/pub/repos/yum/10/redhat/rhel-7-x86_64/pgdg-centos10-10-2.noarch.rpm

vervolgens voert u
  ```
     yum install postgresql10
     yum install postgresql10-server
     /usr/pgsql-10/bin/postgresql-10-setup initdb
  ```
uit

Daarna moet u het proces bij je opstart processen zetten door :
 ```
 systemctl enable postgresql-10
 ```

Om de service dan te starten: 
 ```
 systemctl start postgresql-10
 ```

Dan moet u een nieuw paswoord instellen 
 ```
 sudo -u postgres psql postgres
 ```

Dan staat er normaal postgres-# links onder
Daarna voert u \password postgres uit om een wachtwoord in te stellen (in mariadb was dit 'dbo')
Dan sluit u postgres af door \q uit te voeren

Om dan ervoor te zorgen dat de databank werkt op redhat moet u navigeren als root user naar de 
/var/lib/pgsql/10/data/ directory gaan.
Daar voert u 
 ```
 vi pg_hba_conf
 ``` 
uit en gaat u doormiddel van het insert status ( 'i' typen) naar onder
en past u de lijnen aan van 
  ```
  local all postgres peer
  ```
naar 
``` 
local all postgres md5
```
of u kan in plaats van md5 naar trust veranderen als u niet steeds opnieuw het wachtwoord wil ingeven,
dit is echter niet veilig.

Daarna moet u de service herstarten door 
 ``` 
 sudo service postgresql-10 restart
 ```

Dan logt u zicht in als user van postgres
 ```
 sudo su - postgres
 ```
en daarna opent u het postgreSQL command promt 
 ``` psql```
U moet een user aanmaken
 ``` 
 CREATE USER dbo WITH PASSWORD 'dbo';
 ```
Maak dan een databank aan 
 ```
 CREATE DATABASE dbo
 ```
Daarna moet u het script uitvoeren dat de tabellen aanmaakt maar daarvoor moet u eerst nog het dataformaat 
aanpassen door 
``` 
'sed -i 's/0:00*/:/g' cd /vagrant/data/invoice.csv 
```
dan moet u navigeren naar waar de file staat die de tabellen aanmaakt.
Daar voert u het script uit met 
 ```
 psql -U dbo -f create_tables.sql (dit moet in de gewone vagrant command prompt(links onderaan))
 ```

Dan maakt u een script aan om de csv bestanden in te laden

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
  
In de .sql bestanden met de queries verwijdert u overal de 'dbo.' bijvoorbeeld bij query10.sql past u dus in de WHERE clause "dbo.invoicedetail" aan naar "invoicedetail"
Daarna moet u de queries door een conversietool halen voor de andere syntax die postgre heeft. 
Wij hebben http://www.sqlines.com/online gebruikt.
