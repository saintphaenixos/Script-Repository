#!/bin/zsh

# Here are your variables

echo "What is their name?"
read name

echo "What is the reason I am contacting them?"
read reason

echo "What do we need to do?"
read actions

echo "Was there any miscellaeous info to say?"
read extra

h=`date +%H`

#here we put it all together

if [ $h -lt 12 ]; then
  echo "Morning $name" > responsetemp.fil
elif [ $h -lt 18 ]; then
  echo "Afternoon $name" > responsetemp.fil
else
  echo "Evening $name" > responsetemp.fil
fi

echo "" >> responsetemp.fil

echo "$reason" >> responsetemp.fil

echo "" >> responsetemp.fil

echo "$actions" >> responsetemp.fil

echo "" >> responsetemp.fil

if [ -z "$extra" ]
then
  :
else
  echo "$extra" >> responsetemp.fil
  echo "" >> responsetemp.fil
fi

if [ $h -lt 12 ]; then
  echo You have a good rest of your Morning, >> responsetemp.fil
elif [ $h -lt 18 ]; then
  echo You have a good rest of your Afternoon, >> responsetemp.fil
else
  echo You have a good rest of your Evening, >> responsetemp.fil
fi

echo "" >> responsetemp.fil

echo "-Kent @ West IT" >> responsetemp.fil

#you need to install xclip and specify the handle here.

cat responsetemp.fil | xclip -selection c

rm responsetemp.fil
