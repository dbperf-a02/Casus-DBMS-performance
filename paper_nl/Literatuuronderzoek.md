# Literatuuronderzoek
We gaan eens bekijken wat we allemaal kunnen vinden van informatie van andere bronnen.
## Bibliografische databank
deze kan gevonden worden onder Casus-DBMS-performance/paper_nl/biblio.bib

Hier kan je de gevonden artikels bekijken met een korte samenvatting.
### Basil 2012
Om het artikel samen te vaten in een paar zinnen zou ik zeggen dat het gaat over verscheidene DBMS die getest worden op performantie doormiddel van complexe en minder complexe queries. De performantie werd gemeten door het geheugen gebruik, cpu gebruik, thread count en de duurtijd om het uit te voeren. De geteste DBMS zijn MS SQL Server 2008, Orracle 11g, IBM DB2, MySQL 5.5 en MS Access 2010
### 1. Huge and Real-Time Database Systems: A Comparative Study and Review for SQL Server2016, Oracle 12c & MySQL 5.7 for Personal Computer:
Dit artikel gaat ook over het testen van verscheidene DBMS doormiddel van queries. Alleen testen ze niet altijd op dezelfde dataset maar op verschillende groottes van sets. De queries worden niet getoond maar ze schetsen wel kort wat de bedoeling van de query was. Ten opzicht van het artikel van Basil testen ze meer aspecten van een DBMS.
### 2. Comparing nosql mongodb to an sql db:
Dit artikel gaat over het vergelijken van de NoSQL DBMS: MongoDB en de SQL DBMS: SQL Server. Dit doen ze door te testen op de snelheid van insert, update en select operaties. Wat weliswaar enkel op een database van bescheiden formaat wordt uitgevoerd. Ten opzichte van Basil wordt er hier wel op minder aspecten getest.
### 3. MySQL Database Management System Forks Comparison and Usage
Dit artikel gaat over het vinden van de beste oplossing in de MySQL database management system familie. Voor het vinden van de beste oplossing testen we drie grote MySQL DBMS branches die momenteel aan de top staan: Percona Server, MariaDB en MySQL Community Server. Op deze drie DBMS voeren ze een analyse uit van de storage engines, performance metrics en beschikbare oplossingen voor backup en restore procedures.
### 4. EVALUATION OF DATABASE MANAGEMENT SYSTEMS, Bachelor‟s Thesis in Computer Engineering, Xing Liang & Yongyu Lu
In dit artikel worden verschillende DBMS systemen vergeleken. Er wordt eerst een selecties gemaakt adhv verschillende requirements. Deze selectie van systemen worden dan aan verschillende testen onderworpen met behulp van 'simpele' queries. Volgens deze analyse is Firebird de beste DBMS. Dit artikel sluit zeer nauw aan bij onze onderzoeksvraag.

## Verslag reading group
#### _Wat vinden jullie van de andere artikels in vergelijking met Bassil (2012)?_
Het artikel van Jari (1) bespreekt DBMS op meerdere soorten query’s maar het is wel spijtig dat de query’s zelf niet getoond worden. Ook meer gegevens dan de uitvoertijd zouden een mooie aanvulling geweest zijn. In de bespreking van de experimenten worden er steeds maar een paar DBMS bijgehaald en niet altijd allemaal. In artikel (4) word zeer duidelijk besproken welke DMBS worden geselecteerd om een focus op te leggen.

Het artikel van Billy (2) bespreekt MongoDB en SQL Server op meerdere soorten query’s maar het is wel spijtig dat de query’s zelf niet getoond worden. Ook meer gegevens dan de uitvoertijd zouden een mooie aanvulling geweest zijn. In dit artikel wordt er wel goed vergeleken tussen de twee DBMS en de soorten queries.
#### _Welke vinden jullie het interessantst en waarom?_
/


#### _Welke vinden jullie niet goed en waarom niet?_
In het artikel van Jari (1) zijn er afbeeldingen maar die geven niet altijd even duidelijk weer wat er precies gebeurt is. Soms staat er enkel een grafiek voor één bepaalde DBMS, maar in de uitleg die bij het experiment staat worden er meerder DMBS aangehaald. En als er in een experiment meerdere worden aangehaald, worden ze er niet allemaal bij betrokken maar enkel een paar.

In het artikel van Billy (2) zijn er afbeeldingen maar die geven niet altijd even duidelijk weer hoeveel uitvoeringstijd de query heeft bij een bepaalde test case.
#### _Is iedereen het eens over de kwaliteit van de artikels?_
Ja we merken dat verscheiden artikels van dezelfde aard zijn en aan bepaalde algemene normen voldoet.


#### _Zijn de experimenten representatief voor de onderzoeksvraag, d.w.z. geven ze een goed beeld van de algemene performantie van databases? Als je een antwoord geeft op deze vraag, zorg er voor dat dit aantoonbaar is uit de vakliteratuur._
Ja. Ondanks is bij artikel (4) eerder naar het beantwoorden op de noden van applicatie in plaats van de algemene performantie. Desondanks lopen deze 2 wel in grote lijnen gelijk. 


#### _Wat vind je van de rapportering van de resultaten door de auteur?_
In het artikel van Jari (1) zou het beter geweest zijn als ze ten eerste altijd elk DBMS zouden testen op hetzelfde vlak en niet steeds één staaf op de grafiek voor drie DBMS. Ten tweede testen met steeds dezelfde dataset en niet steeds met een andere zou ook een beter algemeen beeld geven van de DBMS.

In het artikel van Billy (2) zijn de resultaten wel goed weergegeven en vergeleken maar de data van de grafieken mocht ook apart worden meegegeven in een tabel of een aparte excel file.

In het artikel van Robin (3) worden alle resultaten goed weergegeven. Bij elk onderdeel is het duidelijk wat er getest werd en wat erop de grafieken en tabellen staat.

In het artikel van Frédéric worden alle resultaten zeer duidelijk en geordend weergegeven. Er word per criteria een duidelijke beschrijving weergegeven waarom het ene beter of slechter is dan het andere.


#### _Is het verschil tussen de uitkomsten statistisch significant?_
Artikel van Jari (1) : Neen, want er word niet steeds getest op dezelfde dataset noch met alle DBMS vermeld in de titel.

Artikel van Billy (2): Ja, want elke DBMS doorloopt alle queries en per query worden alle test cases getest.

Artikel van Robin (3): Ja, want elke DBMS heeft een identieke configuratie met dezelfde waarden en parameters.


#### _Kan je dit afleiden uit het artikel?_
Artikel van Jari (1) : Ja, op de afbeeldingen worden er op de x-as steeds een paar DMBS gezet en in de bespreking worden ze ook vermeld. 

Artikel van Billy (2): Ja, op de afbeeldingen worden er op de x-as steeds 2 DBMS gezet per test case en in de bespreking worden ze ook vermeld.

Artikel van Robin (3): Ja, in de paragraaf waar ze uitleg geven over de test omgeving staat dit.


#### _Probeer ook te komen tot een preciezere definitie van “performantie.” Is dit een éénduidig begrip?_
Neen dit kan veel meer inhouden dan alleen snelheid. Het kan ook zijn dat de hoeveelheid gebruikt geheugen belangrijk is of het cpu gebruik. Bijgevolg is performantie niet éénduidig. Voor performantie te testen zouden we met een groot aantal parameters rekening moeten houden. Voor deze analyse hebben we ons beperkt op de belangrijkste parameters.


#### _Hoe kan je concreet performantie meten op een objectieve manier die toelaat om vergelijkingen te maken?_
Steeds dezelfde query keer op keer testen en alle resultaten bijhouden en opslaan eer je een ander DBMS test met diezelfde query met hetzelfde aantal tests.



## Deelonderzoeksvragen
## Literatuurstudie
## Bronnen
[1] https://www.researchgate.net/publication/319715249_Huge_and_Real-Time_Database_Systems_A_Comparative_Study_and_Review_for_SQL_Server_2016_Oracle_12c_MySQL_57_for_Personal_Computer

[2] https://www.researchgate.net/publication/261848669_Comparing_nosql_mongodb_to_an_sql_db

[3] https://www.researchgate.net/publication/304394705_MySQL_Database_Management_System_Forks_Comparison_and_Usage

[4] http://www.diva-portal.org/smash/get/diva2:367006/fulltext01.pdf

