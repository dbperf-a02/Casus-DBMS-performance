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

query 1 mariadb
--------------
Resultaten van Jari:
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


Resultaten van Robin:
ResultQuery1 <- read.csv("D:/HoGent/2017-2018/Onderzoekstechnieken/onderzoekstechnieken-casus-master/experiment/ResultQuery1.csv")

View(ResultQuery1)

var(ResultQuery1)
     sys        real         user
sys    0 0.00000e+00 0.000000e+00
real   0 2.00000e-06 2.448980e-07
user   0 2.44898e-07 1.077551e-05

summary(ResultQuery1)
      sys         real             user       
 Min.   :0   Min.   :0.0400   Min.   :0.0200  
 1st Qu.:0   1st Qu.:0.0400   1st Qu.:0.0300  
 Median :0   Median :0.0400   Median :0.0300  
 Mean   :0   Mean   :0.0402   Mean   :0.0288  
 3rd Qu.:0   3rd Qu.:0.0400   3rd Qu.:0.0300  
 Max.   :0   Max.   :0.0500   Max.   :0.0300
 
x <- ResultQuery1[,"real"]
sd(x)
[1] 0.001414214

query 2 mariadb
--------------
Resultaten van Jari:
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


Resultaten van Robin:
ResultQuery2 <- read.csv("D:/HoGent/2017-2018/Onderzoekstechnieken/onderzoekstechnieken-casus-master/experiment/ResultQuery1.csv")
View(ResultQuery2)

summary(ResultQuery2)
      sys         real             user       
 Min.   :0   Min.   :0.0400   Min.   :0.0200  
 1st Qu.:0   1st Qu.:0.0400   1st Qu.:0.0300  
 Median :0   Median :0.0400   Median :0.0300  
 Mean   :0   Mean   :0.0402   Mean   :0.0288  
 3rd Qu.:0   3rd Qu.:0.0400   3rd Qu.:0.0300  
 Max.   :0   Max.   :0.0500   Max.   :0.0300
 
 var(ResultQuery2)
     sys        real         user
sys    0 0.00000e+00 0.000000e+00
real   0 2.00000e-06 2.448980e-07
user   0 2.44898e-07 1.077551e-05

x <- ResultQuery2[,"real"]
> sd(x)
[1] 0.001414214

query 3 mariadb
--------------
Resultaten van Jari:
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


Resultaten van Robin:
ResultQuery3 <- read.csv("D:/HoGent/2017-2018/Onderzoekstechnieken/onderzoekstechnieken-casus-master/experiment/ResultQuery3.csv")
View(ResultQuery3)

summary(ResultQuery3)
      sys         real        user  
 Min.   :0   Min.   :0   Min.   :0  
 1st Qu.:0   1st Qu.:0   1st Qu.:0  
 Median :0   Median :0   Median :0  
 Mean   :0   Mean   :0   Mean   :0  
 3rd Qu.:0   3rd Qu.:0   3rd Qu.:0  
 Max.   :0   Max.   :0   Max.   :0
 
 var(ResultQuery3)
     sys real user
sys    0    0    0
real   0    0    0
user   0    0    0

x <- ResultQuery3[,"real"]
sd(x)
[1] 0

query 4 mariadb
--------------
Resultaten van Jari:
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


Resultaten van Robin:
ResultQuery4 <- read.csv("D:/HoGent/2017-2018/Onderzoekstechnieken/onderzoekstechnieken-casus-master/experiment/ResultQuery4.csv")
View(ResultQuery4)

summary(ResultQuery4)
      sys         real             user       
 Min.   :0   Min.   :0.0600   Min.   :0.0200  
 1st Qu.:0   1st Qu.:0.0600   1st Qu.:0.0300  
 Median :0   Median :0.0600   Median :0.0300  
 Mean   :0   Mean   :0.0602   Mean   :0.0294  
 3rd Qu.:0   3rd Qu.:0.0600   3rd Qu.:0.0300  
 Max.   :0   Max.   :0.0700   Max.   :0.0300  
 
var(ResultQuery4)
     sys        real         user
sys    0 0.00000e+00 0.000000e+00
real   0 2.00000e-06 1.224490e-07
user   0 1.22449e-07 5.755102e-06

x <- ResultQuery4[,"real"]
sd(x)
[1] 0.001414214

query 5 mariadb
--------------
Resultaten van Jari:
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


Resultaten van Robin:
ResultQuery5 <- read.csv("D:/HoGent/2017-2018/Onderzoekstechnieken/onderzoekstechnieken-casus-master/experiment/ResultQuery5.csv")
View(ResultQuery5)

summary(ResultQuery5)
      sys         real             user       
 Min.   :0   Min.   :0.0600   Min.   :0.0100  
 1st Qu.:0   1st Qu.:0.0600   1st Qu.:0.0100  
 Median :0   Median :0.0600   Median :0.0100  
 Mean   :0   Mean   :0.0604   Mean   :0.0108  
 3rd Qu.:0   3rd Qu.:0.0600   3rd Qu.:0.0100  
 Max.   :0   Max.   :0.0700   Max.   :0.0200  
 
 var(ResultQuery5)
     sys         real         user
sys    0 0.000000e+00 0.000000e+00
real   0 3.918367e-06 1.714286e-06
user   0 1.714286e-06 7.510204e-06

x <- ResultQuery5[,"real"]
sd(x)
[1] 0.001979487

query 6 mariadb
--------------
Resultaten van Jari:
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


Resultaten van Robin:
ResultQuery6 <- read.csv("D:/HoGent/2017-2018/Onderzoekstechnieken/onderzoekstechnieken-casus-master/experiment/ResultQuery6.csv")
View(ResultQuery6)

summary(ResultQuery6)
      sys         real             user  
 Min.   :0   Min.   :0.0400   Min.   :0  
 1st Qu.:0   1st Qu.:0.0400   1st Qu.:0  
 Median :0   Median :0.0400   Median :0  
 Mean   :0   Mean   :0.0402   Mean   :0  
 3rd Qu.:0   3rd Qu.:0.0400   3rd Qu.:0  
 Max.   :0   Max.   :0.0500   Max.   :0  
 
 var(ResultQuery6)
     sys  real user
sys    0 0e+00    0
real   0 2e-06    0
user   0 0e+00    0

x <- ResultQuery6[,"real"]
sd(x)
[1] 0.001414214

query 7 mariadb
--------------
Resultaten van Jari:
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


Resultaten van Robin:
ResultQuery7 <- read.csv("D:/HoGent/2017-2018/Onderzoekstechnieken/onderzoekstechnieken-casus-master/experiment/ResultQuery7.csv")
View(ResultQuery7)

summary(ResultQuery7)
      sys         real            user  
 Min.   :0   Min.   :23.37   Min.   :0  
 1st Qu.:0   1st Qu.:23.41   1st Qu.:0  
 Median :0   Median :23.44   Median :0  
 Mean   :0   Mean   :23.50   Mean   :0  
 3rd Qu.:0   3rd Qu.:23.46   3rd Qu.:0  
 Max.   :0   Max.   :24.78   Max.   :0 

var(ResultQuery7)
     sys       real user
sys    0 0.00000000    0
real   0 0.06737653    0
user   0 0.00000000    0

x <- ResultQuery7[,"real"]
sd(x)
[1] 0.2595699

query 8 mariadb
--------------
Resultaten van Jari:
ResultQuery8 <- read.csv("~/Ho Gent/jaar 2/vakken/semester 2/Onderzoekstechnieken/opdracht/github opdracht/onderzoekstechnieken-casus-master/experiment/ResultQuery8.csv")
 
View(ResultQuery8) 


Resultaten van Robin:

query 9 mariadb
--------------
Resultaten van Jari:
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


Resultaten van Robin:
ResultQuery9 <- read.csv("D:/HoGent/2017-2018/Onderzoekstechnieken/onderzoekstechnieken-casus-master/experiment/ResultQuery9.csv")
View(ResultQuery9)

summary(ResultQuery9)
      sys         real             user  
 Min.   :0   Min.   :0.0100   Min.   :0  
 1st Qu.:0   1st Qu.:0.0100   1st Qu.:0  
 Median :0   Median :0.0100   Median :0  
 Mean   :0   Mean   :0.0126   Mean   :0  
 3rd Qu.:0   3rd Qu.:0.0175   3rd Qu.:0  
 Max.   :0   Max.   :0.0200   Max.   :0  
 
 var(ResultQuery9)
     sys         real user
sys    0 0.000000e+00    0
real   0 1.963265e-05    0
user   0 0.000000e+00    0

x <- ResultQuery9[,"real"]
sd(x)
[1] 0.004430875

query 10 mariadb
--------------
Resultaten van Jari:
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


Resultaten van Robin:
ResultQuery10 <- read.csv("D:/HoGent/2017-2018/Onderzoekstechnieken/onderzoekstechnieken-casus-master/experiment/ResultQuery10.csv")
View(ResultQuery10)

summary(ResultQuery10)
      sys         real             user  
 Min.   :0   Min.   :0.0300   Min.   :0  
 1st Qu.:0   1st Qu.:0.0300   1st Qu.:0  
 Median :0   Median :0.0300   Median :0  
 Mean   :0   Mean   :0.0302   Mean   :0  
 3rd Qu.:0   3rd Qu.:0.0300   3rd Qu.:0  
 Max.   :0   Max.   :0.0400   Max.   :0  
 
 var(ResultQuery10)
     sys  real user
sys    0 0e+00    0
real   0 2e-06    0
user   0 0e+00    0

x <- ResultQuery10[,"real"]
sd(x)
[1] 0.001414214

query 11 mariadb
--------------
Resultaten van Jari:
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
 
 
Resultaten van Robin:
ResultQuery11 <- read.csv("D:/HoGent/2017-2018/Onderzoekstechnieken/onderzoekstechnieken-casus-master/experiment/ResultQuery11.csv")
View(ResultQuery11)

summary(ResultQuery11)
      sys         real             user       
 Min.   :0   Min.   :0.1100   Min.   :0.0700  
 1st Qu.:0   1st Qu.:0.1100   1st Qu.:0.0700  
 Median :0   Median :0.1100   Median :0.0700  
 Mean   :0   Mean   :0.1106   Mean   :0.0702  
 3rd Qu.:0   3rd Qu.:0.1100   3rd Qu.:0.0700  
 Max.   :0   Max.   :0.1200   Max.   :0.0800  
 
 var(ResultQuery11)
     sys          real         user
sys    0  0.000000e+00  0.00000e+00
real   0  5.755102e-06 -1.22449e-07
user   0 -1.224490e-07  2.00000e-06

x <- ResultQuery11[,"real"]
sd(x)
[1] 0.002398979