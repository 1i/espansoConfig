#!/bin/bash

read var unit
echo "Convert $var from units: $unit "


# bash nested if/else
if [ $unit == 'cel' ] ; then
  fah=$(echo "scale=2; ($var * 1.8 ) + 32 " | bc )
  echo "$fah"
elif [ $unit == 'fah' ] ; then
  cel=$(echo "scale=2; ($var + 32 ) / 1.8" | bc )
  echo "$cel"
elif [ $unit == 'gmt' ] ; then
  ist=$(echo " $var + 4.5" | bc )
  ust=$(echo " $var - 5" | bc )
  echo "$var $unit ist $ist ust $ust "
elif [ $unit == 'ist' ] ; then
  gmt=$(echo " $var - 4.5" | bc )
  ust=$(echo " $var - 9.5" | bc )
  echo "$var $unit gmt $gmt ust $ust "
elif [ $unit == 'ust' ] ; then
  ist=$(echo " $var - 9.5" | bc )
  ust=$(echo " $var - 5" | bc )
  echo "$var $unit ist $ist ust $ust "
else
  echo "Unkown $var $unit"  
fi 