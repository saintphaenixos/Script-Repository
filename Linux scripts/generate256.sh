#!/bin/bash

#This is a temporary script I used to generate another script for a more complicated form of the colorlibrary known as 256colorlibrary.sh

colors=(0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255)
shades=(black maroon green olive navy purple teal silver grey red lime yellow blue fuchsia aqua white grey0 navyblue darkblue blue3 blue3 blue1 darkgreen deepskyblue4 deepskyblue4 deepskyblue4 dodgerblue3 dodgerblue2 green4 springgreen4 turquoise4 deepskyblue3 deepskyblue3 dodgerblue1 green3 springgreen3 darkcyan lightseagreen deepskyblue2 deepskyblue1 green3 springgreen3 springgreen2 cyan3 darkturquoise turquoise2 green1 springgreen2 springgreen1 mediumspringgreen cyan2 cyan1 darkred deeppink4 purple4 purple4 purple3 blueviolet orange4 grey37 mediumpurple4 slateblue3 slateblue3 royalblue1 chartreuse4 darkseagreen4 paleturquoise4 steelblue steelblue3 cornflowerblue chartreuse3 darkseagreen4 cadetblue cadetblue skyblue3 steelblue1 chartreuse3 palegreen3 seagreen3 aquamarine3 mediumturquoise steelblue1 chartreuse2 seagreen2 seagreen1 seagreen1 aquamarine1 darkslategray2 darkred deeppink4 darkmagenta darkmagenta darkviolet purple orange4 lightpink4 plum4 mediumpurple3 mediumpurple3 slateblue1 yellow4 wheat4 grey53 lightslategrey mediumpurple lightslateblue yellow4 darkolivegreen3 darkseagreen lightskyblue3 lightskyblue3 skyblue2 chartreuse2 darkolivegreen3 palegreen3 darkseagreen3 darkslategray3 skyblue1 chartreuse1 lightgreen lightgreen palegreen1 aquamarine1 darkslategray1 red3 deeppink4 mediumvioletred magenta3 darkviolet purple darkorange3 indianred hotpink3 mediumorchid3 mediumorchid mediumpurple2 darkgoldenrod lightsalmon3 rosybrown grey63 mediumpurple2 mediumpurple1 gold3 darkkhaki navajowhite3 grey69 lightsteelblue3 lightsteelblue yellow3 darkolivegreen3 darkseagreen3 darkseagreen2 lightcyan3 lightskyblue1 greenyellow darkolivegreen2 palegreen1 darkseagreen2 darkseagreen1 paleturquoise1 red3 deeppink3 deeppink3 magenta3 magenta3 magenta2 darkorange3 indianred hotpink3 hotpink2 orchid mediumorchid1 orange3 lightsalmon3 lightpink3 pink3 plum3 violet gold3 lightgoldenrod3 tan mistyrose3 thistle3 plum2 yellow3 khaki3 lightgoldenrod2 lightyellow3 grey84 lightsteelblue1 yellow2 darkolivegreen1 darkolivegreen1 darkseagreen1 honeydew2 lightcyan1 red1 deeppink2 deeppink1 deeppink1 magenta2 magenta1 orangered1 indianred1 indianred1 hotpink hotpink mediumorchid1 darkorange salmon1 lightcoral palevioletred1 orchid2 orchid1 orange1 sandybrown lightsalmon1 lightpink1 pink1 plum1 gold1 lightgoldenrod2 lightgoldenrod2 navajowhite1 mistyrose1 thistle1 yellow1 lightgoldenrod1 khaki1 wheat1 cornsilk1 grey100 grey3 grey7 grey11 grey15 grey19 grey23 grey27 grey30 grey35 grey39 grey42 grey46 grey50 grey54 grey58 grey62 grey66 grey70 grey74 grey78 grey82 grey85 grey89 grey93)

#for color in "${!colors[@]}" ; do
for ((i=0;i<256;i++)); do
  echo ""
  echo "${shades[$i]}() {"
  echo "    echo -e \"\e[38;5;${colors[$i]}m\${1}\e[0m\""
  echo "}"

done

for ((i=0;i<256;i++)); do
  echo ""
  echo "${shades[$i]}bg() {"
  echo "    echo -e \"\e[48;5;${colors[$i]}m\${1}\e[0m\""
  echo "}"

done

echo "echo \"\""
echo "echo \"Now lets demo these colors:\""
echo "echo \"\""

for ((i=0;i<256;i++)); do
  echo "${shades[$i]} \"This is ${shades[$i]}!\""

done

echo "echo \"\""
echo "echo \"Now lets demo these background colors:\""
echo "echo \"\""

for ((i=0;i<256;i++)); do
  echo "${shades[$i]}bg \"This is ${shades[$i]}!\""

done
