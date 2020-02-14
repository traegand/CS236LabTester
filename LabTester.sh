#!/bin/bash

g++ -Wall -Werror -std=c++17 -g *.cpp -o lab_236

rm diffFile.txt

touch diffFile.txt

for var in $@
do
./lab_236 in$var.txt >actual.txt
diff=$(diff out$var.txt actual.txt)
if [ "$diff" == "" ]
then
echo "test $var passed" >>diffFile.txt
else
echo "test $var Failed" >>diffFile.txt
diff out$var.txt actual.txt >Fail$var.txt
fi
done

cat diffFile.txt
