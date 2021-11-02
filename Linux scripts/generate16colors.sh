#!/bin/bash

#This is a temporary script I used to generate another script for a more complicated form of the colorlibrary known as 256colorlibrary.sh

colors=(29 30 31 32 33 34 35 36 37 90 91 92 93 94 95 96 97)
bgcolors=(49 40 41 42 43 44 45 46 47 100 101 102 103 104 105 106 107)
shades=(default black red green yellow blue magenta cyan lightgray darkgray lightred lightgreen lightyellow lightblue lightmagenta lightcyan white)
formats=(1 2 4 5 7 8)
effects=(bold dim underline blink invertcolor hidden)

echo "#!/bin/bash"
echo "#Version 1.0"
echo ""
echo "#This is a sourceable library of functions for changing the text or background of text colors to one of the 16 colors and text formats using ANSI/VT100 Control sequences."

for ((i=0;i<6;i++)); do
  echo ""
  echo "${effects[$i]}() {"
  echo "    if (( \$# == 0 )) ; then"
  echo "        xargs -r -I{} echo -e \"\e[${formats[$i]}m\"{}\"\e[0m\" < /dev/stdin"
  echo "    else"
  echo "        echo -e \"\e[${formats[$i]}m\${@}\e[0m\""
  echo "    fi"
  echo "}"

done

for ((i=0;i<17;i++)); do
  echo ""
  echo "${shades[$i]}() {"
  echo "    if (( \$# == 0 )) ; then"
  echo "        xargs -r -I{} echo -e \"\e[${colors[$i]}m\"{}\"\e[0m\" < /dev/stdin"
  echo "    else"
  echo "        echo -e \"\e[${colors[$i]}m\${@}\e[0m\""
  echo "    fi"
  echo "}"

done

for ((i=0;i<17;i++)); do
  echo ""
  echo "${shades[$i]}bg() {"
  echo "    if (( \$# == 0 )) ; then"
  echo "        xargs -r -I{} echo -e \"\e[${bgcolors[$i]}m{}\e[0m\" < /dev/stdin"
  echo "    else"
  echo "        echo -e \"\e[${bgcolors[$i]}m\${@}\e[0m\""
  echo "    fi"
  echo "}"

done

echo ""
echo "#A neat little trick with an if statement to block out a bunch of lines in a script. If you want the demo, comment out the if false statement, the attached then, and lastly the fi at the bottom of the script. You may need to add the execute bit as well to the script."
echo "if false"
echo "then"

echo ""
echo "echo \"\""
echo "echo \"Now lets demo these formats:\""
echo "echo \"\""
echo ""

for ((i=0;i<6;i++)); do
  echo "${effects[$i]} \"This is ${effects[$i]}!\""
done

echo ""
echo "echo \"\""
echo "echo \"Now lets demo these text colors:\""
echo "echo \"\""
echo ""

for ((i=0;i<17;i++)); do
  echo "${shades[$i]} \"This is ${shades[$i]}!\""
done

echo ""
echo "echo \"\""
echo "echo \"Now lets demo these background colors:\""
echo "echo \"\""
echo ""

for ((i=0;i<17;i++)); do
  echo "${shades[$i]}bg \"This is ${shades[$i]}!\""
done

echo ""
echo "fi"
