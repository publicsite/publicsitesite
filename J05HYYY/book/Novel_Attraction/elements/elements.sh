#!/bin/sh
replace=","
replace2=" "
while read line
do
linelength=`expr length "$line"`
lastcomma=$(expr "$line" : '.*'"$replace" - $(expr "$replace" : '.*'))
lastcomma=`expr $lastcomma + 2`
elementname=`echo "$line" | cut -c $lastcomma-$linelength`
echo "$elementname"
remainone=`echo "$line" | cut -c 1-$lastcomma`
lastcomma=$(expr "$remainone" : '.*'"$replace" - $(expr "$replace" : '.*'))
remainone=`echo "$line" | cut -c 1-$lastcomma`
lastcomma=$(expr "$remainone" : '.*'"$replace" - $(expr "$replace" : '.*'))
atomicnumber=`echo "$line" | cut -c 1-$lastcomma`

a=`expr $atomicnumber - 2`
if [ $a -lt 0 ]; then
a=`expr 2 + $a`
else
a=2
fi
echo "$a"

atomicnumber=`expr $atomicnumber - $a`

if [ $atomicnumber -gt 0 ]; then
a=`expr $atomicnumber - 8`
if [ $a -lt 0 ]; then
a=`expr 8 + $a`
else
a=8
fi
echo "$a"
atomicnumber=`expr $atomicnumber - $a`
fi

if [ $atomicnumber -gt 0 ]; then
a=`expr $atomicnumber - 18`
if [ $a -lt 0 ]; then
a=`expr 18 + $a`
else
a=18
fi
echo "$a"
atomicnumber=`expr $atomicnumber - $a`
fi

if [ $atomicnumber -gt 0 ]; then
a=`expr $atomicnumber - 32`
if [ $a -lt 0 ]; then
a=`expr 32 + $a`
else
a=32
fi
echo "$a"
atomicnumber=`expr $atomicnumber - $a`
fi

if [ $atomicnumber -gt 0 ]; then
a=`expr $atomicnumber - 50`
if [ $a -lt 0 ]; then
a=`expr 50 + $a`
else
a=50
fi
echo "$a"
atomicnumber=`expr $atomicnumber - $a`
fi

if [ $atomicnumber -gt 0 ]; then
a=`expr $atomicnumber - 72`
if [ $a -lt 0 ]; then
a=`expr 72 + $a`
else
a=72
fi
echo "$a"
atomicnumber=`expr $atomicnumber - $a`
fi

if [ $atomicnumber -gt 0 ]; then
a=`expr $atomicnumber - 98`
if [ $a -lt 0 ]; then
a=`expr 98 + $a`
else
a=98
fi
echo "$a"
fi

done