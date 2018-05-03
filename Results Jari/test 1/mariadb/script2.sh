set -o errexit

#rm ResultQuery7.csv
echo "sys,real,user" >> ResultQuery7.csv
for j in {0..49}
do
{ /usr/bin/time -f "%s,%e,%U" mysql -udbo -pdbo dbo < /vagrant/queries/query7.sql > /dev/null; } 2>> ResultQuery7.csv;
done 