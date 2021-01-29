#!/bin/zsh

#Lets add some color!
red() {
    echo "\e[31m${1}\e[0m"
}

green() {
    echo "\e[32m${1}\e[0m"
}

yellow() {
    echo "\e[33m${1}\e[0m"
}

#here are your variables!
red "What is their name?"
read name

yellow "What was the issue on the machine?"
read issue

green "What did I do to fix the issue?"
read fix

yellow "Was there any miscellaneous info to say?"
read extra

h=`date +%H`

#here are your actions

echo "$issue" > responsetemp.fil

echo "" >> responsetemp.fil

echo "$fix" >> responsetemp.fil

echo "" >> responsetemp.fil

if [ -z "$extra" ]
then
  :
else
  echo "$extra" >> responsetemp.fil
  echo "" >> responsetemp.fil
fi

  echo "-------------------------------------------------------------" >> responsetemp.fil

if [ $h -lt 12 ]; then
  echo Good Morning $name >> responsetemp.fil
elif [ $h -lt 18 ]; then
  echo Good Afternoon $name >> responsetemp.fil
else
  echo Good Evening $name >> responsetemp.fil
fi

echo "" >> responsetemp.fil

echo "I hope this fixes the issue, If you have any further questions on the issue, please give us a call at 4900 or respond to this email, and it'll automatically re-open the ticket." >> responsetemp.fil

echo "" >> responsetemp.fil

if [ $h -lt 12 ]; then
  echo You have a good rest of your morning, >> responsetemp.fil
elif [ $h -lt 18 ]; then
  echo You have a good rest of your afternoon, >> responsetemp.fil
else
  echo You have a good rest of your evening, >> responsetemp.fil
fi

echo "" >> responsetemp.fil

echo "-Kent in IT" >> responsetemp.fil

#you need to install xclip and the handle is specified here.

cat responsetemp.fil | xclip -selection c

rm responsetemp.fil
