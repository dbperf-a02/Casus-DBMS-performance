
set -o errexit

#rm ResultQuery1.csv
echo "sys,real,user" >> ResultQuery1.csv
for j in {0..49}
do
{ /usr/bin/time -f "%s,%e,%U" psql -U dbo -f /vagrant/queries/postgre/query1.sql > /dev/null; } 2>> ResultQuery1.csv;
done 

#rm ResultQuery2.csv
echo "sys,real,user" >> ResultQuery2.csv
for j in {0..49}
do
{  /usr/bin/time -f "%s,%e,%U" psql -U dbo -f /vagrant/queries/postgre/query2.sql > /dev/null;} 2>> ResultQuery2.csv;
done 

#rm ResultQuery3.csv
echo "sys,real,user" >> ResultQuery3.csv
for j in {0..49}
do
{  /usr/bin/time -f "%s,%e,%U" psql -U dbo -f /vagrant/queries/postgre/query3.sql > /dev/null; } 2>> ResultQuery3.csv;
done 

#rm ResultQuery4.csv
echo "sys,real,user" >> ResultQuery4.csv
for j in {0..49}
do
{  /usr/bin/time -f "%s,%e,%U" psql -U dbo -f /vagrant/queries/postgre/query4.sql > /dev/null; } 2>> ResultQuery4.csv;
done 

#rm ResultQuery5.csv
echo "sys,real,user" >> ResultQuery5.csv
for j in {0..49}
do
{ /usr/bin/time -f "%s,%e,%U" psql -U dbo -f /vagrant/queries/postgre/query5.sql > /dev/null; } 2>> ResultQuery5.csv;
done 

#rm ResultQuery6.csv
echo "sys,real,user" >> ResultQuery6.csv
for j in {0..49}
do
{  /usr/bin/time -f "%s,%e,%U" psql -U dbo -f /vagrant/queries/postgre/query6.sql > /dev/null;} 2>> ResultQuery6.csv;
done 

#rm ResultQuery7.csv
echo "sys,real,user" >> ResultQuery7.csv
for j in {0..49}
do
{  /usr/bin/time -f "%s,%e,%U" psql -U dbo -f /vagrant/queries/postgre/query7.sql > /dev/null; } 2>> ResultQuery7.csv;
done 

#rm ResultQuery8.csv
#echo "sys,real,user" >> ResultQuery8.csv
#for j in {0..49}
#do
#{ /usr/bin/time -f "%s,%e,%U" psql -U dbo -f /vagrant/queries/postgre/query8.sql > /dev/null; } 2>> ResultQuery8.csv;
#done 

#rm ResultQuery9.csv
echo "sys,real,user" >> ResultQuery9.csv
for j in {0..49}
do
{  /usr/bin/time -f "%s,%e,%U" psql -U dbo -f /vagrant/queries/postgre/query9.sql > /dev/null;} 2>> ResultQuery9.csv;
done 

#rm ResultQuery10.csv
echo "sys,real,user" >> ResultQuery10.csv
for j in {0..49}
do
{  /usr/bin/time -f "%s,%e,%U" psql -U dbo -f /vagrant/queries/postgre/query10.sql > /dev/null; } 2>> ResultQuery10.csv;
done 

#rm ResultQuery11.csv
echo "sys,real,user" >> ResultQuery11.csv
for j in {0..49}
do
{  /usr/bin/time -f "%s,%e,%U" psql -U dbo -f /vagrant/queries/postgre/query11.sql > /dev/null; } 2>> ResultQuery11.csv;
done 