st2="http://www.esahity.com"
curl $1 | grep pdf | grep -o -P '(?<=href=\").*(?=pdf)'  > tmp
mkdir $2
mv tmp $2/.
cd $2
while read p; do
  wget $st2$p"pdf" 
done <tmp



