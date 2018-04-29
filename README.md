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

