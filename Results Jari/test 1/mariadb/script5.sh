set -o errexit 


#rm ResultQuery12.csv
echo "sys,real,user" >> ResultQuery12.csv
for j in {0..49}
do
{ /usr/bin/time -f "%s,%e,%U"  time mysql -udbo -pdbo dbo < /vagrant/queries/query1.sql > /dev/null;  } 2>> ResultQuery12.csv;
done