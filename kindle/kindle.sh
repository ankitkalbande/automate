st2="http://www.esahity.com"
curl $1 | grep pdf | grep -o -P '(?<=href=\").*(?=pdf)'  > $2
mkdir $2
mv $2 $2/.
cd $2
while read p; do
  wget $st2$p"pdf" 
done <katha

