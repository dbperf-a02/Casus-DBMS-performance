-- -- The english verion of this text can be found in '[README_en.md](README_en.md)'. -- --

# Casus onderzoeksproces

Gebruik deze repository voor het bijhouden van alle informatie, code en resultaten van jullie mini-onderzoek rond performantie van databases. Gebruik [Markdown](https://guides.github.com/features/mastering-markdown/) voor verslagen, procedures, enz. (alle bestanden waar je anders Word voor zou gebruiken). Een sjabloon voor het artikel en een bestand voor de bibliografische databank is ook voorzien.

In [opstart.md](opstart.md) vind je instructies om aan de slag te gaan.

## Teamleden

| Naam     | Github                        | Email                               |
| :---     | :---                          | :---                                |
| Frédéric De Smet | <https://github.com/frddsmet> | <mailto:fredericdesmet@live.be> |
| Jari De Troch | <https://github.com/jariDeTroch> | <mailto:jari.detroch.y7078@student.hogent.be> |
| Billy Cottrell | <https://github.com/BillyCottrell> | <mailto:billy.cottrell.y9181@student.hogent.be> |
| Robin Segers | <https://github.com/RobinSegers> | <mailto:robin.segers.y7480@student.hogent.be> |

## Uitvoeren experimenten

Voeg later in dit document instructies toe die toelaten om jullie experimenten van begin (= opstarten VMs) tot einde (= analyse testresultaten) te reproduceren.
Laptop van Jari : Dell Inspiron 15 
Processor Intel(R) Core(TM) i7-6700HQ CPU @ 2.60GHz, 2601 MHz, 4 core('s), 8 logische processor(s). 
Ram Geïnstalleerd fysiek geheugen (RAM)	16,0 GB

query 1 mariadb
--------------
ResultQuery1 <- read.csv("~/Ho Gent/jaar 2/vakken/semester 2/Onderzoekstechnieken/opdracht/github opdracht/onderzoekstechnieken-casus-master/experiment/ResultQuery1.csv")
 
View(ResultQuery1)

var(ResultQuery1)
     sys         real         user
sys    0 0.000000e+00 0.000000e+00
real   0 9.183673e-06 6.938776e-06
user   0 6.938776e-06 1.077551e-05

summary(ResultQuery1)
      sys         real            user       
 Min.   :0   Min.   :0.050   Min.   :0.0300  
 1st Qu.:0   1st Qu.:0.050   1st Qu.:0.0300  
 Median :0   Median :0.050   Median :0.0300  
 Mean   :0   Mean   :0.051   Mean   :0.0312  
 3rd Qu.:0   3rd Qu.:0.050   3rd Qu.:0.0300  
 Max.   :0   Max.   :0.060   Max.   :0.0400  

query 2 mariadb
--------------
ResultQuery2 <- read.csv("~/Ho Gent/jaar 2/vakken/semester 2/Onderzoekstechnieken/opdracht/github opdracht/onderzoekstechnieken-casus-master/experiment/ResultQuery2.csv")
 
View(ResultQuery2)
summary(ResultQuery2)
      sys         real            user  
 Min.   :0   Min.   :0.010   Min.   :0  
 1st Qu.:0   1st Qu.:0.010   1st Qu.:0  
 Median :0   Median :0.010   Median :0  
 Mean   :0   Mean   :0.014   Mean   :0  
 3rd Qu.:0   3rd Qu.:0.020   3rd Qu.:0  
 Max.   :0   Max.   :0.020   Max.   :0  


var(ResultQuery2)
     sys        real user
sys    0 0.00000e+00    0
real   0 2.44898e-05    0
user   0 0.00000e+00    0


query 3 mariadb
--------------
ResultQuery3 <- read.csv("~/Ho Gent/jaar 2/vakken/semester 2/Onderzoekstechnieken/opdracht/github opdracht/onderzoekstechnieken-casus-master/experiment/ResultQuery3.csv")
 
View(ResultQuery3)
summary(ResultQuery3)
      sys         real            user  
 Min.   :0   Min.   :0   Min.   :0  
 1st Qu.:0   1st Qu.:0   1st Qu.:0  
 Median :0   Median :0   Median :0  
 Mean   :0   Mean   :0   Mean   :0  
 3rd Qu.:0   3rd Qu.:0   3rd Qu.:0  
 Max.   :0   Max.   :0   Max.   :0  


var(ResultQuery3)
     sys real user
sys   0   0    0
real  0   0    0
user  0   0    0


query 4 mariadb
--------------
ResultQuery4 <- read.csv("~/Ho Gent/jaar 2/vakken/semester 2/Onderzoekstechnieken/opdracht/github opdracht/onderzoekstechnieken-casus-master/experiment/ResultQuery4.csv")
 
View(ResultQuery4)

var(ResultQuery4)
     sys         real         user
sys    0 0.000000e+00 0.000000e+00
real   0 3.918367e-06 3.673469e-06
user   0 3.673469e-06 9.183673e-06

summary(ResultQuery4)
      sys         real             user      
 Min.   :0   Min.   :0.0700   Min.   :0.030  
 1st Qu.:0   1st Qu.:0.0700   1st Qu.:0.030  
 Median :0   Median :0.0700   Median :0.030  
 Mean   :0   Mean   :0.0704   Mean   :0.031  
 3rd Qu.:0   3rd Qu.:0.0700   3rd Qu.:0.030  
 Max.   :0   Max.   :0.0800   Max.   :0.040 

query 5 mariadb
--------------
ResultQuery5 <- read.csv("~/Ho Gent/jaar 2/vakken/semester 2/Onderzoekstechnieken/opdracht/github opdracht/onderzoekstechnieken-casus-master/experiment/ResultQuery5.csv")
 
View(ResultQuery5)
var(ResultQuery5)
     sys          real          user
sys    0  0.000000e+00  0.000000e+00
real   0  1.751020e-05 -5.306122e-07
user   0 -5.306122e-07  2.289796e-05)

summary(ResultQuery5)
      sys         real             user       
 Min.   :0   Min.   :0.0700   Min.   :0.0100  
 1st Qu.:0   1st Qu.:0.0700   1st Qu.:0.0100  
 Median :0   Median :0.0700   Median :0.0200  
 Mean   :0   Mean   :0.0722   Mean   :0.0166  
 3rd Qu.:0   3rd Qu.:0.0700   3rd Qu.:0.0200  
 Max.   :0   Max.   :0.0800   Max.   :0.0200   

query 6 mariadb
--------------
ResultQuery6 <- read.csv("~/Ho Gent/jaar 2/vakken/semester 2/Onderzoekstechnieken/opdracht/github opdracht/onderzoekstechnieken-casus-master/experiment/ResultQuery6.csv")
 
View(ResultQuery6)

var(ResultQuery6)
     sys         real user
sys    0 0.000000e+00    0
real   0 1.861224e-05    0
user   0 0.000000e+00    0

summary(ResultQuery6)
      sys         real             user  
 Min.   :0   Min.   :0.0400   Min.   :0  
 1st Qu.:0   1st Qu.:0.0400   1st Qu.:0  
 Median :0   Median :0.0400   Median :0  
 Mean   :0   Mean   :0.0424   Mean   :0  
 3rd Qu.:0   3rd Qu.:0.0400   3rd Qu.:0  
 Max.   :0   Max.   :0.0500   Max.   :0  

query 7 mariadb
--------------
ResultQuery7 <- read.csv("~/Ho Gent/jaar 2/vakken/semester 2/Onderzoekstechnieken/opdracht/github opdracht/onderzoekstechnieken-casus-master/experiment/ResultQuery7.csv")
 
View(ResultQuery7)

var(ResultQuery7)
     sys     real user
sys    0 0.000000    0
real   0 1.494906    0
user   0 0.000000    0

summary(ResultQuery7)
      sys         real            user  
 Min.   :0   Min.   :28.66   Min.   :0  
 1st Qu.:0   1st Qu.:28.95   1st Qu.:0  
 Median :0   Median :29.07   Median :0  
 Mean   :0   Mean   :29.76   Mean   :0  
 3rd Qu.:0   3rd Qu.:30.45   3rd Qu.:0  
 Max.   :0   Max.   :33.87   Max.   :0 

query 8 mariadb
--------------
ResultQuery8 <- read.csv("~/Ho Gent/jaar 2/vakken/semester 2/Onderzoekstechnieken/opdracht/github opdracht/onderzoekstechnieken-casus-master/experiment/ResultQuery8.csv")
 
View(ResultQuery8) 


query 9 mariadb
--------------
ResultQuery9 <- read.csv("~/Ho Gent/jaar 2/vakken/semester 2/Onderzoekstechnieken/opdracht/github opdracht/onderzoekstechnieken-casus-master/experiment/ResultQuery9.csv")
 
View(ResultQuery9)

var(ResultQuery9)
     sys         real user
sys    0 0.000000e+00    0
real   0 1.228571e-05    0
user   0 0.000000e+00    0

summary(ResultQuery9)
      sys         real             user  
 Min.   :0   Min.   :0.0100   Min.   :0  
 1st Qu.:0   1st Qu.:0.0200   1st Qu.:0  
 Median :0   Median :0.0200   Median :0  
 Mean   :0   Mean   :0.0186   Mean   :0  
 3rd Qu.:0   3rd Qu.:0.0200   3rd Qu.:0  
 Max.   :0   Max.   :0.0200   Max.   :0 

query 10 mariadb
--------------
ResultQuery10 <- read.csv("~/Ho Gent/jaar 2/vakken/semester 2/Onderzoekstechnieken/opdracht/github opdracht/onderzoekstechnieken-casus-master/experiment/ResultQuery10.csv")
 
View(ResultQuery10)

var(ResultQuery10)
     sys  real user
sys    0 0e+00    0
real   0 2e-06    0
user   0 0e+00    0

summary(ResultQuery10)
      sys         real             user  
 Min.   :0   Min.   :0.0400   Min.   :0  
 1st Qu.:0   1st Qu.:0.0400   1st Qu.:0  
 Median :0   Median :0.0400   Median :0  
 Mean   :0   Mean   :0.0402   Mean   :0  
 3rd Qu.:0   3rd Qu.:0.0400   3rd Qu.:0  
 Max.   :0   Max.   :0.0500   Max.   :0 

query 11 mariadb
--------------
ResultQuery11 <- read.csv("~/Ho Gent/jaar 2/vakken/semester 2/Onderzoekstechnieken/opdracht/github opdracht/onderzoekstechnieken-casus-master/experiment/ResultQuery11.csv")
 
View(ResultQuery11) 

var(ResultQuery11)
     sys        real         user
sys    0 0.000000000 0.0000000000
real   0 0.005463714 0.0002411020
user   0 0.000241102 0.0001432245

summary(ResultQuery11)
      sys         real             user       
 Min.   :0   Min.   :0.1400   Min.   :0.0800  
 1st Qu.:0   1st Qu.:0.1400   1st Qu.:0.0900  
 Median :0   Median :0.1500   Median :0.0900  
 Mean   :0   Mean   :0.1634   Mean   :0.0958  
 3rd Qu.:0   3rd Qu.:0.1600   3rd Qu.:0.1000  
 Max.   :0   Max.   :0.6600   Max.   :0.1400 
