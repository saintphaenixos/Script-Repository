#!/bin/zsh

#This is to for me to remember how to do abbreviated arrays in zsh.


for letter in {a..z} ; do
  echo $letter
done

#Now in reverse

for character in {z..a} ; do
    echo $character
done

#Now I want every second letter:

for text in {a..z..2} ; do
    echo $text
UserDomainPrefix

#You can do them next to each other also:

echo {a..d}{a..d}


# For simple removal of parts of a variable you can:

echo "Thisistoolong"
long=$(echo "thisistoolong")

echo ${long%toolong}

#further practice: https://www.linux.com/topic/desktop/all-about-curly-braces-bash/
