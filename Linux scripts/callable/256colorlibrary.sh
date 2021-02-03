#!/bin/bash

#This is an example of creating a function that you can use to change text or background of text colors to one of the 256 colors.

black() {
    echo -e "\e[38;5;0m${1}\e[0m"
}

maroon() {
    echo -e "\e[38;5;1m${1}\e[0m"
}

green() {
    echo -e "\e[38;5;2m${1}\e[0m"
}

olive() {
    echo -e "\e[38;5;3m${1}\e[0m"
}

navy() {
    echo -e "\e[38;5;4m${1}\e[0m"
}

purple() {
    echo -e "\e[38;5;5m${1}\e[0m"
}

teal() {
    echo -e "\e[38;5;6m${1}\e[0m"
}

silver() {
    echo -e "\e[38;5;7m${1}\e[0m"
}

grey() {
    echo -e "\e[38;5;8m${1}\e[0m"
}

red() {
    echo -e "\e[38;5;9m${1}\e[0m"
}

lime() {
    echo -e "\e[38;5;10m${1}\e[0m"
}

yellow() {
    echo -e "\e[38;5;11m${1}\e[0m"
}

blue() {
    echo -e "\e[38;5;12m${1}\e[0m"
}

fuchsia() {
    echo -e "\e[38;5;13m${1}\e[0m"
}

aqua() {
    echo -e "\e[38;5;14m${1}\e[0m"
}

white() {
    echo -e "\e[38;5;15m${1}\e[0m"
}

grey0() {
    echo -e "\e[38;5;16m${1}\e[0m"
}

navyblue() {
    echo -e "\e[38;5;17m${1}\e[0m"
}

darkblue() {
    echo -e "\e[38;5;18m${1}\e[0m"
}

blue3() {
    echo -e "\e[38;5;19m${1}\e[0m"
}

blue3() {
    echo -e "\e[38;5;20m${1}\e[0m"
}

blue1() {
    echo -e "\e[38;5;21m${1}\e[0m"
}

darkgreen() {
    echo -e "\e[38;5;22m${1}\e[0m"
}

deepskyblue4() {
    echo -e "\e[38;5;23m${1}\e[0m"
}

deepskyblue4() {
    echo -e "\e[38;5;24m${1}\e[0m"
}

deepskyblue4() {
    echo -e "\e[38;5;25m${1}\e[0m"
}

dodgerblue3() {
    echo -e "\e[38;5;26m${1}\e[0m"
}

dodgerblue2() {
    echo -e "\e[38;5;27m${1}\e[0m"
}

green4() {
    echo -e "\e[38;5;28m${1}\e[0m"
}

springgreen4() {
    echo -e "\e[38;5;29m${1}\e[0m"
}

turquoise4() {
    echo -e "\e[38;5;30m${1}\e[0m"
}

deepskyblue3() {
    echo -e "\e[38;5;31m${1}\e[0m"
}

deepskyblue3() {
    echo -e "\e[38;5;32m${1}\e[0m"
}

dodgerblue1() {
    echo -e "\e[38;5;33m${1}\e[0m"
}

green3() {
    echo -e "\e[38;5;34m${1}\e[0m"
}

springgreen3() {
    echo -e "\e[38;5;35m${1}\e[0m"
}

darkcyan() {
    echo -e "\e[38;5;36m${1}\e[0m"
}

lightseagreen() {
    echo -e "\e[38;5;37m${1}\e[0m"
}

deepskyblue2() {
    echo -e "\e[38;5;38m${1}\e[0m"
}

deepskyblue1() {
    echo -e "\e[38;5;39m${1}\e[0m"
}

green3() {
    echo -e "\e[38;5;40m${1}\e[0m"
}

springgreen3() {
    echo -e "\e[38;5;41m${1}\e[0m"
}

springgreen2() {
    echo -e "\e[38;5;42m${1}\e[0m"
}

cyan3() {
    echo -e "\e[38;5;43m${1}\e[0m"
}

darkturquoise() {
    echo -e "\e[38;5;44m${1}\e[0m"
}

turquoise2() {
    echo -e "\e[38;5;45m${1}\e[0m"
}

green1() {
    echo -e "\e[38;5;46m${1}\e[0m"
}

springgreen2() {
    echo -e "\e[38;5;47m${1}\e[0m"
}

springgreen1() {
    echo -e "\e[38;5;48m${1}\e[0m"
}

mediumspringgreen() {
    echo -e "\e[38;5;49m${1}\e[0m"
}

cyan2() {
    echo -e "\e[38;5;50m${1}\e[0m"
}

cyan1() {
    echo -e "\e[38;5;51m${1}\e[0m"
}

darkred() {
    echo -e "\e[38;5;52m${1}\e[0m"
}

deeppink4() {
    echo -e "\e[38;5;53m${1}\e[0m"
}

purple4() {
    echo -e "\e[38;5;54m${1}\e[0m"
}

purple4() {
    echo -e "\e[38;5;55m${1}\e[0m"
}

purple3() {
    echo -e "\e[38;5;56m${1}\e[0m"
}

blueviolet() {
    echo -e "\e[38;5;57m${1}\e[0m"
}

orange4() {
    echo -e "\e[38;5;58m${1}\e[0m"
}

grey37() {
    echo -e "\e[38;5;59m${1}\e[0m"
}

mediumpurple4() {
    echo -e "\e[38;5;60m${1}\e[0m"
}

slateblue3() {
    echo -e "\e[38;5;61m${1}\e[0m"
}

slateblue3() {
    echo -e "\e[38;5;62m${1}\e[0m"
}

royalblue1() {
    echo -e "\e[38;5;63m${1}\e[0m"
}

chartreuse4() {
    echo -e "\e[38;5;64m${1}\e[0m"
}

darkseagreen4() {
    echo -e "\e[38;5;65m${1}\e[0m"
}

paleturquoise4() {
    echo -e "\e[38;5;66m${1}\e[0m"
}

steelblue() {
    echo -e "\e[38;5;67m${1}\e[0m"
}

steelblue3() {
    echo -e "\e[38;5;68m${1}\e[0m"
}

cornflowerblue() {
    echo -e "\e[38;5;69m${1}\e[0m"
}

chartreuse3() {
    echo -e "\e[38;5;70m${1}\e[0m"
}

darkseagreen4() {
    echo -e "\e[38;5;71m${1}\e[0m"
}

cadetblue() {
    echo -e "\e[38;5;72m${1}\e[0m"
}

cadetblue() {
    echo -e "\e[38;5;73m${1}\e[0m"
}

skyblue3() {
    echo -e "\e[38;5;74m${1}\e[0m"
}

steelblue1() {
    echo -e "\e[38;5;75m${1}\e[0m"
}

chartreuse3() {
    echo -e "\e[38;5;76m${1}\e[0m"
}

palegreen3() {
    echo -e "\e[38;5;77m${1}\e[0m"
}

seagreen3() {
    echo -e "\e[38;5;78m${1}\e[0m"
}

aquamarine3() {
    echo -e "\e[38;5;79m${1}\e[0m"
}

mediumturquoise() {
    echo -e "\e[38;5;80m${1}\e[0m"
}

steelblue1() {
    echo -e "\e[38;5;81m${1}\e[0m"
}

chartreuse2() {
    echo -e "\e[38;5;82m${1}\e[0m"
}

seagreen2() {
    echo -e "\e[38;5;83m${1}\e[0m"
}

seagreen1() {
    echo -e "\e[38;5;84m${1}\e[0m"
}

seagreen1() {
    echo -e "\e[38;5;85m${1}\e[0m"
}

aquamarine1() {
    echo -e "\e[38;5;86m${1}\e[0m"
}

darkslategray2() {
    echo -e "\e[38;5;87m${1}\e[0m"
}

darkred() {
    echo -e "\e[38;5;88m${1}\e[0m"
}

deeppink4() {
    echo -e "\e[38;5;89m${1}\e[0m"
}

darkmagenta() {
    echo -e "\e[38;5;90m${1}\e[0m"
}

darkmagenta() {
    echo -e "\e[38;5;91m${1}\e[0m"
}

darkviolet() {
    echo -e "\e[38;5;92m${1}\e[0m"
}

purple() {
    echo -e "\e[38;5;93m${1}\e[0m"
}

orange4() {
    echo -e "\e[38;5;94m${1}\e[0m"
}

lightpink4() {
    echo -e "\e[38;5;95m${1}\e[0m"
}

plum4() {
    echo -e "\e[38;5;96m${1}\e[0m"
}

mediumpurple3() {
    echo -e "\e[38;5;97m${1}\e[0m"
}

mediumpurple3() {
    echo -e "\e[38;5;98m${1}\e[0m"
}

slateblue1() {
    echo -e "\e[38;5;99m${1}\e[0m"
}

yellow4() {
    echo -e "\e[38;5;100m${1}\e[0m"
}

wheat4() {
    echo -e "\e[38;5;101m${1}\e[0m"
}

grey53() {
    echo -e "\e[38;5;102m${1}\e[0m"
}

lightslategrey() {
    echo -e "\e[38;5;103m${1}\e[0m"
}

mediumpurple() {
    echo -e "\e[38;5;104m${1}\e[0m"
}

lightslateblue() {
    echo -e "\e[38;5;105m${1}\e[0m"
}

yellow4() {
    echo -e "\e[38;5;106m${1}\e[0m"
}

darkolivegreen3() {
    echo -e "\e[38;5;107m${1}\e[0m"
}

darkseagreen() {
    echo -e "\e[38;5;108m${1}\e[0m"
}

lightskyblue3() {
    echo -e "\e[38;5;109m${1}\e[0m"
}

lightskyblue3() {
    echo -e "\e[38;5;110m${1}\e[0m"
}

skyblue2() {
    echo -e "\e[38;5;111m${1}\e[0m"
}

chartreuse2() {
    echo -e "\e[38;5;112m${1}\e[0m"
}

darkolivegreen3() {
    echo -e "\e[38;5;113m${1}\e[0m"
}

palegreen3() {
    echo -e "\e[38;5;114m${1}\e[0m"
}

darkseagreen3() {
    echo -e "\e[38;5;115m${1}\e[0m"
}

darkslategray3() {
    echo -e "\e[38;5;116m${1}\e[0m"
}

skyblue1() {
    echo -e "\e[38;5;117m${1}\e[0m"
}

chartreuse1() {
    echo -e "\e[38;5;118m${1}\e[0m"
}

lightgreen() {
    echo -e "\e[38;5;119m${1}\e[0m"
}

lightgreen() {
    echo -e "\e[38;5;120m${1}\e[0m"
}

palegreen1() {
    echo -e "\e[38;5;121m${1}\e[0m"
}

aquamarine1() {
    echo -e "\e[38;5;122m${1}\e[0m"
}

darkslategray1() {
    echo -e "\e[38;5;123m${1}\e[0m"
}

red3() {
    echo -e "\e[38;5;124m${1}\e[0m"
}

deeppink4() {
    echo -e "\e[38;5;125m${1}\e[0m"
}

mediumvioletred() {
    echo -e "\e[38;5;126m${1}\e[0m"
}

magenta3() {
    echo -e "\e[38;5;127m${1}\e[0m"
}

darkviolet() {
    echo -e "\e[38;5;128m${1}\e[0m"
}

purple() {
    echo -e "\e[38;5;129m${1}\e[0m"
}

darkorange3() {
    echo -e "\e[38;5;130m${1}\e[0m"
}

indianred() {
    echo -e "\e[38;5;131m${1}\e[0m"
}

hotpink3() {
    echo -e "\e[38;5;132m${1}\e[0m"
}

mediumorchid3() {
    echo -e "\e[38;5;133m${1}\e[0m"
}

mediumorchid() {
    echo -e "\e[38;5;134m${1}\e[0m"
}

mediumpurple2() {
    echo -e "\e[38;5;135m${1}\e[0m"
}

darkgoldenrod() {
    echo -e "\e[38;5;136m${1}\e[0m"
}

lightsalmon3() {
    echo -e "\e[38;5;137m${1}\e[0m"
}

rosybrown() {
    echo -e "\e[38;5;138m${1}\e[0m"
}

grey63() {
    echo -e "\e[38;5;139m${1}\e[0m"
}

mediumpurple2() {
    echo -e "\e[38;5;140m${1}\e[0m"
}

mediumpurple1() {
    echo -e "\e[38;5;141m${1}\e[0m"
}

gold3() {
    echo -e "\e[38;5;142m${1}\e[0m"
}

darkkhaki() {
    echo -e "\e[38;5;143m${1}\e[0m"
}

navajowhite3() {
    echo -e "\e[38;5;144m${1}\e[0m"
}

grey69() {
    echo -e "\e[38;5;145m${1}\e[0m"
}

lightsteelblue3() {
    echo -e "\e[38;5;146m${1}\e[0m"
}

lightsteelblue() {
    echo -e "\e[38;5;147m${1}\e[0m"
}

yellow3() {
    echo -e "\e[38;5;148m${1}\e[0m"
}

darkolivegreen3() {
    echo -e "\e[38;5;149m${1}\e[0m"
}

darkseagreen3() {
    echo -e "\e[38;5;150m${1}\e[0m"
}

darkseagreen2() {
    echo -e "\e[38;5;151m${1}\e[0m"
}

lightcyan3() {
    echo -e "\e[38;5;152m${1}\e[0m"
}

lightskyblue1() {
    echo -e "\e[38;5;153m${1}\e[0m"
}

greenyellow() {
    echo -e "\e[38;5;154m${1}\e[0m"
}

darkolivegreen2() {
    echo -e "\e[38;5;155m${1}\e[0m"
}

palegreen1() {
    echo -e "\e[38;5;156m${1}\e[0m"
}

darkseagreen2() {
    echo -e "\e[38;5;157m${1}\e[0m"
}

darkseagreen1() {
    echo -e "\e[38;5;158m${1}\e[0m"
}

paleturquoise1() {
    echo -e "\e[38;5;159m${1}\e[0m"
}

red3() {
    echo -e "\e[38;5;160m${1}\e[0m"
}

deeppink3() {
    echo -e "\e[38;5;161m${1}\e[0m"
}

deeppink3() {
    echo -e "\e[38;5;162m${1}\e[0m"
}

magenta3() {
    echo -e "\e[38;5;163m${1}\e[0m"
}

magenta3() {
    echo -e "\e[38;5;164m${1}\e[0m"
}

magenta2() {
    echo -e "\e[38;5;165m${1}\e[0m"
}

darkorange3() {
    echo -e "\e[38;5;166m${1}\e[0m"
}

indianred() {
    echo -e "\e[38;5;167m${1}\e[0m"
}

hotpink3() {
    echo -e "\e[38;5;168m${1}\e[0m"
}

hotpink2() {
    echo -e "\e[38;5;169m${1}\e[0m"
}

orchid() {
    echo -e "\e[38;5;170m${1}\e[0m"
}

mediumorchid1() {
    echo -e "\e[38;5;171m${1}\e[0m"
}

orange3() {
    echo -e "\e[38;5;172m${1}\e[0m"
}

lightsalmon3() {
    echo -e "\e[38;5;173m${1}\e[0m"
}

lightpink3() {
    echo -e "\e[38;5;174m${1}\e[0m"
}

pink3() {
    echo -e "\e[38;5;175m${1}\e[0m"
}

plum3() {
    echo -e "\e[38;5;176m${1}\e[0m"
}

violet() {
    echo -e "\e[38;5;177m${1}\e[0m"
}

gold3() {
    echo -e "\e[38;5;178m${1}\e[0m"
}

lightgoldenrod3() {
    echo -e "\e[38;5;179m${1}\e[0m"
}

tan() {
    echo -e "\e[38;5;180m${1}\e[0m"
}

mistyrose3() {
    echo -e "\e[38;5;181m${1}\e[0m"
}

thistle3() {
    echo -e "\e[38;5;182m${1}\e[0m"
}

plum2() {
    echo -e "\e[38;5;183m${1}\e[0m"
}

yellow3() {
    echo -e "\e[38;5;184m${1}\e[0m"
}

khaki3() {
    echo -e "\e[38;5;185m${1}\e[0m"
}

lightgoldenrod2() {
    echo -e "\e[38;5;186m${1}\e[0m"
}

lightyellow3() {
    echo -e "\e[38;5;187m${1}\e[0m"
}

grey84() {
    echo -e "\e[38;5;188m${1}\e[0m"
}

lightsteelblue1() {
    echo -e "\e[38;5;189m${1}\e[0m"
}

yellow2() {
    echo -e "\e[38;5;190m${1}\e[0m"
}

darkolivegreen1() {
    echo -e "\e[38;5;191m${1}\e[0m"
}

darkolivegreen1() {
    echo -e "\e[38;5;192m${1}\e[0m"
}

darkseagreen1() {
    echo -e "\e[38;5;193m${1}\e[0m"
}

honeydew2() {
    echo -e "\e[38;5;194m${1}\e[0m"
}

lightcyan1() {
    echo -e "\e[38;5;195m${1}\e[0m"
}

red1() {
    echo -e "\e[38;5;196m${1}\e[0m"
}

deeppink2() {
    echo -e "\e[38;5;197m${1}\e[0m"
}

deeppink1() {
    echo -e "\e[38;5;198m${1}\e[0m"
}

deeppink1() {
    echo -e "\e[38;5;199m${1}\e[0m"
}

magenta2() {
    echo -e "\e[38;5;200m${1}\e[0m"
}

magenta1() {
    echo -e "\e[38;5;201m${1}\e[0m"
}

orangered1() {
    echo -e "\e[38;5;202m${1}\e[0m"
}

indianred1() {
    echo -e "\e[38;5;203m${1}\e[0m"
}

indianred1() {
    echo -e "\e[38;5;204m${1}\e[0m"
}

hotpink() {
    echo -e "\e[38;5;205m${1}\e[0m"
}

hotpink() {
    echo -e "\e[38;5;206m${1}\e[0m"
}

mediumorchid1() {
    echo -e "\e[38;5;207m${1}\e[0m"
}

darkorange() {
    echo -e "\e[38;5;208m${1}\e[0m"
}

salmon1() {
    echo -e "\e[38;5;209m${1}\e[0m"
}

lightcoral() {
    echo -e "\e[38;5;210m${1}\e[0m"
}

palevioletred1() {
    echo -e "\e[38;5;211m${1}\e[0m"
}

orchid2() {
    echo -e "\e[38;5;212m${1}\e[0m"
}

orchid1() {
    echo -e "\e[38;5;213m${1}\e[0m"
}

orange1() {
    echo -e "\e[38;5;214m${1}\e[0m"
}

sandybrown() {
    echo -e "\e[38;5;215m${1}\e[0m"
}

lightsalmon1() {
    echo -e "\e[38;5;216m${1}\e[0m"
}

lightpink1() {
    echo -e "\e[38;5;217m${1}\e[0m"
}

pink1() {
    echo -e "\e[38;5;218m${1}\e[0m"
}

plum1() {
    echo -e "\e[38;5;219m${1}\e[0m"
}

gold1() {
    echo -e "\e[38;5;220m${1}\e[0m"
}

lightgoldenrod2() {
    echo -e "\e[38;5;221m${1}\e[0m"
}

lightgoldenrod2() {
    echo -e "\e[38;5;222m${1}\e[0m"
}

navajowhite1() {
    echo -e "\e[38;5;223m${1}\e[0m"
}

mistyrose1() {
    echo -e "\e[38;5;224m${1}\e[0m"
}

thistle1() {
    echo -e "\e[38;5;225m${1}\e[0m"
}

yellow1() {
    echo -e "\e[38;5;226m${1}\e[0m"
}

lightgoldenrod1() {
    echo -e "\e[38;5;227m${1}\e[0m"
}

khaki1() {
    echo -e "\e[38;5;228m${1}\e[0m"
}

wheat1() {
    echo -e "\e[38;5;229m${1}\e[0m"
}

cornsilk1() {
    echo -e "\e[38;5;230m${1}\e[0m"
}

grey100() {
    echo -e "\e[38;5;231m${1}\e[0m"
}

grey3() {
    echo -e "\e[38;5;232m${1}\e[0m"
}

grey7() {
    echo -e "\e[38;5;233m${1}\e[0m"
}

grey11() {
    echo -e "\e[38;5;234m${1}\e[0m"
}

grey15() {
    echo -e "\e[38;5;235m${1}\e[0m"
}

grey19() {
    echo -e "\e[38;5;236m${1}\e[0m"
}

grey23() {
    echo -e "\e[38;5;237m${1}\e[0m"
}

grey27() {
    echo -e "\e[38;5;238m${1}\e[0m"
}

grey30() {
    echo -e "\e[38;5;239m${1}\e[0m"
}

grey35() {
    echo -e "\e[38;5;240m${1}\e[0m"
}

grey39() {
    echo -e "\e[38;5;241m${1}\e[0m"
}

grey42() {
    echo -e "\e[38;5;242m${1}\e[0m"
}

grey46() {
    echo -e "\e[38;5;243m${1}\e[0m"
}

grey50() {
    echo -e "\e[38;5;244m${1}\e[0m"
}

grey54() {
    echo -e "\e[38;5;245m${1}\e[0m"
}

grey58() {
    echo -e "\e[38;5;246m${1}\e[0m"
}

grey62() {
    echo -e "\e[38;5;247m${1}\e[0m"
}

grey66() {
    echo -e "\e[38;5;248m${1}\e[0m"
}

grey70() {
    echo -e "\e[38;5;249m${1}\e[0m"
}

grey74() {
    echo -e "\e[38;5;250m${1}\e[0m"
}

grey78() {
    echo -e "\e[38;5;251m${1}\e[0m"
}

grey82() {
    echo -e "\e[38;5;252m${1}\e[0m"
}

grey85() {
    echo -e "\e[38;5;253m${1}\e[0m"
}

grey89() {
    echo -e "\e[38;5;254m${1}\e[0m"
}

grey93() {
    echo -e "\e[38;5;255m${1}\e[0m"
}

blackbg() {
    echo -e "\e[48;5;0m${1}\e[0m"
}

maroonbg() {
    echo -e "\e[48;5;1m${1}\e[0m"
}

greenbg() {
    echo -e "\e[48;5;2m${1}\e[0m"
}

olivebg() {
    echo -e "\e[48;5;3m${1}\e[0m"
}

navybg() {
    echo -e "\e[48;5;4m${1}\e[0m"
}

purplebg() {
    echo -e "\e[48;5;5m${1}\e[0m"
}

tealbg() {
    echo -e "\e[48;5;6m${1}\e[0m"
}

silverbg() {
    echo -e "\e[48;5;7m${1}\e[0m"
}

greybg() {
    echo -e "\e[48;5;8m${1}\e[0m"
}

redbg() {
    echo -e "\e[48;5;9m${1}\e[0m"
}

limebg() {
    echo -e "\e[48;5;10m${1}\e[0m"
}

yellowbg() {
    echo -e "\e[48;5;11m${1}\e[0m"
}

bluebg() {
    echo -e "\e[48;5;12m${1}\e[0m"
}

fuchsiabg() {
    echo -e "\e[48;5;13m${1}\e[0m"
}

aquabg() {
    echo -e "\e[48;5;14m${1}\e[0m"
}

whitebg() {
    echo -e "\e[48;5;15m${1}\e[0m"
}

grey0bg() {
    echo -e "\e[48;5;16m${1}\e[0m"
}

navybluebg() {
    echo -e "\e[48;5;17m${1}\e[0m"
}

darkbluebg() {
    echo -e "\e[48;5;18m${1}\e[0m"
}

blue3bg() {
    echo -e "\e[48;5;19m${1}\e[0m"
}

blue3bg() {
    echo -e "\e[48;5;20m${1}\e[0m"
}

blue1bg() {
    echo -e "\e[48;5;21m${1}\e[0m"
}

darkgreenbg() {
    echo -e "\e[48;5;22m${1}\e[0m"
}

deepskyblue4bg() {
    echo -e "\e[48;5;23m${1}\e[0m"
}

deepskyblue4bg() {
    echo -e "\e[48;5;24m${1}\e[0m"
}

deepskyblue4bg() {
    echo -e "\e[48;5;25m${1}\e[0m"
}

dodgerblue3bg() {
    echo -e "\e[48;5;26m${1}\e[0m"
}

dodgerblue2bg() {
    echo -e "\e[48;5;27m${1}\e[0m"
}

green4bg() {
    echo -e "\e[48;5;28m${1}\e[0m"
}

springgreen4bg() {
    echo -e "\e[48;5;29m${1}\e[0m"
}

turquoise4bg() {
    echo -e "\e[48;5;30m${1}\e[0m"
}

deepskyblue3bg() {
    echo -e "\e[48;5;31m${1}\e[0m"
}

deepskyblue3bg() {
    echo -e "\e[48;5;32m${1}\e[0m"
}

dodgerblue1bg() {
    echo -e "\e[48;5;33m${1}\e[0m"
}

green3bg() {
    echo -e "\e[48;5;34m${1}\e[0m"
}

springgreen3bg() {
    echo -e "\e[48;5;35m${1}\e[0m"
}

darkcyanbg() {
    echo -e "\e[48;5;36m${1}\e[0m"
}

lightseagreenbg() {
    echo -e "\e[48;5;37m${1}\e[0m"
}

deepskyblue2bg() {
    echo -e "\e[48;5;38m${1}\e[0m"
}

deepskyblue1bg() {
    echo -e "\e[48;5;39m${1}\e[0m"
}

green3bg() {
    echo -e "\e[48;5;40m${1}\e[0m"
}

springgreen3bg() {
    echo -e "\e[48;5;41m${1}\e[0m"
}

springgreen2bg() {
    echo -e "\e[48;5;42m${1}\e[0m"
}

cyan3bg() {
    echo -e "\e[48;5;43m${1}\e[0m"
}

darkturquoisebg() {
    echo -e "\e[48;5;44m${1}\e[0m"
}

turquoise2bg() {
    echo -e "\e[48;5;45m${1}\e[0m"
}

green1bg() {
    echo -e "\e[48;5;46m${1}\e[0m"
}

springgreen2bg() {
    echo -e "\e[48;5;47m${1}\e[0m"
}

springgreen1bg() {
    echo -e "\e[48;5;48m${1}\e[0m"
}

mediumspringgreenbg() {
    echo -e "\e[48;5;49m${1}\e[0m"
}

cyan2bg() {
    echo -e "\e[48;5;50m${1}\e[0m"
}

cyan1bg() {
    echo -e "\e[48;5;51m${1}\e[0m"
}

darkredbg() {
    echo -e "\e[48;5;52m${1}\e[0m"
}

deeppink4bg() {
    echo -e "\e[48;5;53m${1}\e[0m"
}

purple4bg() {
    echo -e "\e[48;5;54m${1}\e[0m"
}

purple4bg() {
    echo -e "\e[48;5;55m${1}\e[0m"
}

purple3bg() {
    echo -e "\e[48;5;56m${1}\e[0m"
}

bluevioletbg() {
    echo -e "\e[48;5;57m${1}\e[0m"
}

orange4bg() {
    echo -e "\e[48;5;58m${1}\e[0m"
}

grey37bg() {
    echo -e "\e[48;5;59m${1}\e[0m"
}

mediumpurple4bg() {
    echo -e "\e[48;5;60m${1}\e[0m"
}

slateblue3bg() {
    echo -e "\e[48;5;61m${1}\e[0m"
}

slateblue3bg() {
    echo -e "\e[48;5;62m${1}\e[0m"
}

royalblue1bg() {
    echo -e "\e[48;5;63m${1}\e[0m"
}

chartreuse4bg() {
    echo -e "\e[48;5;64m${1}\e[0m"
}

darkseagreen4bg() {
    echo -e "\e[48;5;65m${1}\e[0m"
}

paleturquoise4bg() {
    echo -e "\e[48;5;66m${1}\e[0m"
}

steelbluebg() {
    echo -e "\e[48;5;67m${1}\e[0m"
}

steelblue3bg() {
    echo -e "\e[48;5;68m${1}\e[0m"
}

cornflowerbluebg() {
    echo -e "\e[48;5;69m${1}\e[0m"
}

chartreuse3bg() {
    echo -e "\e[48;5;70m${1}\e[0m"
}

darkseagreen4bg() {
    echo -e "\e[48;5;71m${1}\e[0m"
}

cadetbluebg() {
    echo -e "\e[48;5;72m${1}\e[0m"
}

cadetbluebg() {
    echo -e "\e[48;5;73m${1}\e[0m"
}

skyblue3bg() {
    echo -e "\e[48;5;74m${1}\e[0m"
}

steelblue1bg() {
    echo -e "\e[48;5;75m${1}\e[0m"
}

chartreuse3bg() {
    echo -e "\e[48;5;76m${1}\e[0m"
}

palegreen3bg() {
    echo -e "\e[48;5;77m${1}\e[0m"
}

seagreen3bg() {
    echo -e "\e[48;5;78m${1}\e[0m"
}

aquamarine3bg() {
    echo -e "\e[48;5;79m${1}\e[0m"
}

mediumturquoisebg() {
    echo -e "\e[48;5;80m${1}\e[0m"
}

steelblue1bg() {
    echo -e "\e[48;5;81m${1}\e[0m"
}

chartreuse2bg() {
    echo -e "\e[48;5;82m${1}\e[0m"
}

seagreen2bg() {
    echo -e "\e[48;5;83m${1}\e[0m"
}

seagreen1bg() {
    echo -e "\e[48;5;84m${1}\e[0m"
}

seagreen1bg() {
    echo -e "\e[48;5;85m${1}\e[0m"
}

aquamarine1bg() {
    echo -e "\e[48;5;86m${1}\e[0m"
}

darkslategray2bg() {
    echo -e "\e[48;5;87m${1}\e[0m"
}

darkredbg() {
    echo -e "\e[48;5;88m${1}\e[0m"
}

deeppink4bg() {
    echo -e "\e[48;5;89m${1}\e[0m"
}

darkmagentabg() {
    echo -e "\e[48;5;90m${1}\e[0m"
}

darkmagentabg() {
    echo -e "\e[48;5;91m${1}\e[0m"
}

darkvioletbg() {
    echo -e "\e[48;5;92m${1}\e[0m"
}

purplebg() {
    echo -e "\e[48;5;93m${1}\e[0m"
}

orange4bg() {
    echo -e "\e[48;5;94m${1}\e[0m"
}

lightpink4bg() {
    echo -e "\e[48;5;95m${1}\e[0m"
}

plum4bg() {
    echo -e "\e[48;5;96m${1}\e[0m"
}

mediumpurple3bg() {
    echo -e "\e[48;5;97m${1}\e[0m"
}

mediumpurple3bg() {
    echo -e "\e[48;5;98m${1}\e[0m"
}

slateblue1bg() {
    echo -e "\e[48;5;99m${1}\e[0m"
}

yellow4bg() {
    echo -e "\e[48;5;100m${1}\e[0m"
}

wheat4bg() {
    echo -e "\e[48;5;101m${1}\e[0m"
}

grey53bg() {
    echo -e "\e[48;5;102m${1}\e[0m"
}

lightslategreybg() {
    echo -e "\e[48;5;103m${1}\e[0m"
}

mediumpurplebg() {
    echo -e "\e[48;5;104m${1}\e[0m"
}

lightslatebluebg() {
    echo -e "\e[48;5;105m${1}\e[0m"
}

yellow4bg() {
    echo -e "\e[48;5;106m${1}\e[0m"
}

darkolivegreen3bg() {
    echo -e "\e[48;5;107m${1}\e[0m"
}

darkseagreenbg() {
    echo -e "\e[48;5;108m${1}\e[0m"
}

lightskyblue3bg() {
    echo -e "\e[48;5;109m${1}\e[0m"
}

lightskyblue3bg() {
    echo -e "\e[48;5;110m${1}\e[0m"
}

skyblue2bg() {
    echo -e "\e[48;5;111m${1}\e[0m"
}

chartreuse2bg() {
    echo -e "\e[48;5;112m${1}\e[0m"
}

darkolivegreen3bg() {
    echo -e "\e[48;5;113m${1}\e[0m"
}

palegreen3bg() {
    echo -e "\e[48;5;114m${1}\e[0m"
}

darkseagreen3bg() {
    echo -e "\e[48;5;115m${1}\e[0m"
}

darkslategray3bg() {
    echo -e "\e[48;5;116m${1}\e[0m"
}

skyblue1bg() {
    echo -e "\e[48;5;117m${1}\e[0m"
}

chartreuse1bg() {
    echo -e "\e[48;5;118m${1}\e[0m"
}

lightgreenbg() {
    echo -e "\e[48;5;119m${1}\e[0m"
}

lightgreenbg() {
    echo -e "\e[48;5;120m${1}\e[0m"
}

palegreen1bg() {
    echo -e "\e[48;5;121m${1}\e[0m"
}

aquamarine1bg() {
    echo -e "\e[48;5;122m${1}\e[0m"
}

darkslategray1bg() {
    echo -e "\e[48;5;123m${1}\e[0m"
}

red3bg() {
    echo -e "\e[48;5;124m${1}\e[0m"
}

deeppink4bg() {
    echo -e "\e[48;5;125m${1}\e[0m"
}

mediumvioletredbg() {
    echo -e "\e[48;5;126m${1}\e[0m"
}

magenta3bg() {
    echo -e "\e[48;5;127m${1}\e[0m"
}

darkvioletbg() {
    echo -e "\e[48;5;128m${1}\e[0m"
}

purplebg() {
    echo -e "\e[48;5;129m${1}\e[0m"
}

darkorange3bg() {
    echo -e "\e[48;5;130m${1}\e[0m"
}

indianredbg() {
    echo -e "\e[48;5;131m${1}\e[0m"
}

hotpink3bg() {
    echo -e "\e[48;5;132m${1}\e[0m"
}

mediumorchid3bg() {
    echo -e "\e[48;5;133m${1}\e[0m"
}

mediumorchidbg() {
    echo -e "\e[48;5;134m${1}\e[0m"
}

mediumpurple2bg() {
    echo -e "\e[48;5;135m${1}\e[0m"
}

darkgoldenrodbg() {
    echo -e "\e[48;5;136m${1}\e[0m"
}

lightsalmon3bg() {
    echo -e "\e[48;5;137m${1}\e[0m"
}

rosybrownbg() {
    echo -e "\e[48;5;138m${1}\e[0m"
}

grey63bg() {
    echo -e "\e[48;5;139m${1}\e[0m"
}

mediumpurple2bg() {
    echo -e "\e[48;5;140m${1}\e[0m"
}

mediumpurple1bg() {
    echo -e "\e[48;5;141m${1}\e[0m"
}

gold3bg() {
    echo -e "\e[48;5;142m${1}\e[0m"
}

darkkhakibg() {
    echo -e "\e[48;5;143m${1}\e[0m"
}

navajowhite3bg() {
    echo -e "\e[48;5;144m${1}\e[0m"
}

grey69bg() {
    echo -e "\e[48;5;145m${1}\e[0m"
}

lightsteelblue3bg() {
    echo -e "\e[48;5;146m${1}\e[0m"
}

lightsteelbluebg() {
    echo -e "\e[48;5;147m${1}\e[0m"
}

yellow3bg() {
    echo -e "\e[48;5;148m${1}\e[0m"
}

darkolivegreen3bg() {
    echo -e "\e[48;5;149m${1}\e[0m"
}

darkseagreen3bg() {
    echo -e "\e[48;5;150m${1}\e[0m"
}

darkseagreen2bg() {
    echo -e "\e[48;5;151m${1}\e[0m"
}

lightcyan3bg() {
    echo -e "\e[48;5;152m${1}\e[0m"
}

lightskyblue1bg() {
    echo -e "\e[48;5;153m${1}\e[0m"
}

greenyellowbg() {
    echo -e "\e[48;5;154m${1}\e[0m"
}

darkolivegreen2bg() {
    echo -e "\e[48;5;155m${1}\e[0m"
}

palegreen1bg() {
    echo -e "\e[48;5;156m${1}\e[0m"
}

darkseagreen2bg() {
    echo -e "\e[48;5;157m${1}\e[0m"
}

darkseagreen1bg() {
    echo -e "\e[48;5;158m${1}\e[0m"
}

paleturquoise1bg() {
    echo -e "\e[48;5;159m${1}\e[0m"
}

red3bg() {
    echo -e "\e[48;5;160m${1}\e[0m"
}

deeppink3bg() {
    echo -e "\e[48;5;161m${1}\e[0m"
}

deeppink3bg() {
    echo -e "\e[48;5;162m${1}\e[0m"
}

magenta3bg() {
    echo -e "\e[48;5;163m${1}\e[0m"
}

magenta3bg() {
    echo -e "\e[48;5;164m${1}\e[0m"
}

magenta2bg() {
    echo -e "\e[48;5;165m${1}\e[0m"
}

darkorange3bg() {
    echo -e "\e[48;5;166m${1}\e[0m"
}

indianredbg() {
    echo -e "\e[48;5;167m${1}\e[0m"
}

hotpink3bg() {
    echo -e "\e[48;5;168m${1}\e[0m"
}

hotpink2bg() {
    echo -e "\e[48;5;169m${1}\e[0m"
}

orchidbg() {
    echo -e "\e[48;5;170m${1}\e[0m"
}

mediumorchid1bg() {
    echo -e "\e[48;5;171m${1}\e[0m"
}

orange3bg() {
    echo -e "\e[48;5;172m${1}\e[0m"
}

lightsalmon3bg() {
    echo -e "\e[48;5;173m${1}\e[0m"
}

lightpink3bg() {
    echo -e "\e[48;5;174m${1}\e[0m"
}

pink3bg() {
    echo -e "\e[48;5;175m${1}\e[0m"
}

plum3bg() {
    echo -e "\e[48;5;176m${1}\e[0m"
}

violetbg() {
    echo -e "\e[48;5;177m${1}\e[0m"
}

gold3bg() {
    echo -e "\e[48;5;178m${1}\e[0m"
}

lightgoldenrod3bg() {
    echo -e "\e[48;5;179m${1}\e[0m"
}

tanbg() {
    echo -e "\e[48;5;180m${1}\e[0m"
}

mistyrose3bg() {
    echo -e "\e[48;5;181m${1}\e[0m"
}

thistle3bg() {
    echo -e "\e[48;5;182m${1}\e[0m"
}

plum2bg() {
    echo -e "\e[48;5;183m${1}\e[0m"
}

yellow3bg() {
    echo -e "\e[48;5;184m${1}\e[0m"
}

khaki3bg() {
    echo -e "\e[48;5;185m${1}\e[0m"
}

lightgoldenrod2bg() {
    echo -e "\e[48;5;186m${1}\e[0m"
}

lightyellow3bg() {
    echo -e "\e[48;5;187m${1}\e[0m"
}

grey84bg() {
    echo -e "\e[48;5;188m${1}\e[0m"
}

lightsteelblue1bg() {
    echo -e "\e[48;5;189m${1}\e[0m"
}

yellow2bg() {
    echo -e "\e[48;5;190m${1}\e[0m"
}

darkolivegreen1bg() {
    echo -e "\e[48;5;191m${1}\e[0m"
}

darkolivegreen1bg() {
    echo -e "\e[48;5;192m${1}\e[0m"
}

darkseagreen1bg() {
    echo -e "\e[48;5;193m${1}\e[0m"
}

honeydew2bg() {
    echo -e "\e[48;5;194m${1}\e[0m"
}

lightcyan1bg() {
    echo -e "\e[48;5;195m${1}\e[0m"
}

red1bg() {
    echo -e "\e[48;5;196m${1}\e[0m"
}

deeppink2bg() {
    echo -e "\e[48;5;197m${1}\e[0m"
}

deeppink1bg() {
    echo -e "\e[48;5;198m${1}\e[0m"
}

deeppink1bg() {
    echo -e "\e[48;5;199m${1}\e[0m"
}

magenta2bg() {
    echo -e "\e[48;5;200m${1}\e[0m"
}

magenta1bg() {
    echo -e "\e[48;5;201m${1}\e[0m"
}

orangered1bg() {
    echo -e "\e[48;5;202m${1}\e[0m"
}

indianred1bg() {
    echo -e "\e[48;5;203m${1}\e[0m"
}

indianred1bg() {
    echo -e "\e[48;5;204m${1}\e[0m"
}

hotpinkbg() {
    echo -e "\e[48;5;205m${1}\e[0m"
}

hotpinkbg() {
    echo -e "\e[48;5;206m${1}\e[0m"
}

mediumorchid1bg() {
    echo -e "\e[48;5;207m${1}\e[0m"
}

darkorangebg() {
    echo -e "\e[48;5;208m${1}\e[0m"
}

salmon1bg() {
    echo -e "\e[48;5;209m${1}\e[0m"
}

lightcoralbg() {
    echo -e "\e[48;5;210m${1}\e[0m"
}

palevioletred1bg() {
    echo -e "\e[48;5;211m${1}\e[0m"
}

orchid2bg() {
    echo -e "\e[48;5;212m${1}\e[0m"
}

orchid1bg() {
    echo -e "\e[48;5;213m${1}\e[0m"
}

orange1bg() {
    echo -e "\e[48;5;214m${1}\e[0m"
}

sandybrownbg() {
    echo -e "\e[48;5;215m${1}\e[0m"
}

lightsalmon1bg() {
    echo -e "\e[48;5;216m${1}\e[0m"
}

lightpink1bg() {
    echo -e "\e[48;5;217m${1}\e[0m"
}

pink1bg() {
    echo -e "\e[48;5;218m${1}\e[0m"
}

plum1bg() {
    echo -e "\e[48;5;219m${1}\e[0m"
}

gold1bg() {
    echo -e "\e[48;5;220m${1}\e[0m"
}

lightgoldenrod2bg() {
    echo -e "\e[48;5;221m${1}\e[0m"
}

lightgoldenrod2bg() {
    echo -e "\e[48;5;222m${1}\e[0m"
}

navajowhite1bg() {
    echo -e "\e[48;5;223m${1}\e[0m"
}

mistyrose1bg() {
    echo -e "\e[48;5;224m${1}\e[0m"
}

thistle1bg() {
    echo -e "\e[48;5;225m${1}\e[0m"
}

yellow1bg() {
    echo -e "\e[48;5;226m${1}\e[0m"
}

lightgoldenrod1bg() {
    echo -e "\e[48;5;227m${1}\e[0m"
}

khaki1bg() {
    echo -e "\e[48;5;228m${1}\e[0m"
}

wheat1bg() {
    echo -e "\e[48;5;229m${1}\e[0m"
}

cornsilk1bg() {
    echo -e "\e[48;5;230m${1}\e[0m"
}

grey100bg() {
    echo -e "\e[48;5;231m${1}\e[0m"
}

grey3bg() {
    echo -e "\e[48;5;232m${1}\e[0m"
}

grey7bg() {
    echo -e "\e[48;5;233m${1}\e[0m"
}

grey11bg() {
    echo -e "\e[48;5;234m${1}\e[0m"
}

grey15bg() {
    echo -e "\e[48;5;235m${1}\e[0m"
}

grey19bg() {
    echo -e "\e[48;5;236m${1}\e[0m"
}

grey23bg() {
    echo -e "\e[48;5;237m${1}\e[0m"
}

grey27bg() {
    echo -e "\e[48;5;238m${1}\e[0m"
}

grey30bg() {
    echo -e "\e[48;5;239m${1}\e[0m"
}

grey35bg() {
    echo -e "\e[48;5;240m${1}\e[0m"
}

grey39bg() {
    echo -e "\e[48;5;241m${1}\e[0m"
}

grey42bg() {
    echo -e "\e[48;5;242m${1}\e[0m"
}

grey46bg() {
    echo -e "\e[48;5;243m${1}\e[0m"
}

grey50bg() {
    echo -e "\e[48;5;244m${1}\e[0m"
}

grey54bg() {
    echo -e "\e[48;5;245m${1}\e[0m"
}

grey58bg() {
    echo -e "\e[48;5;246m${1}\e[0m"
}

grey62bg() {
    echo -e "\e[48;5;247m${1}\e[0m"
}

grey66bg() {
    echo -e "\e[48;5;248m${1}\e[0m"
}

grey70bg() {
    echo -e "\e[48;5;249m${1}\e[0m"
}

grey74bg() {
    echo -e "\e[48;5;250m${1}\e[0m"
}

grey78bg() {
    echo -e "\e[48;5;251m${1}\e[0m"
}

grey82bg() {
    echo -e "\e[48;5;252m${1}\e[0m"
}

grey85bg() {
    echo -e "\e[48;5;253m${1}\e[0m"
}

grey89bg() {
    echo -e "\e[48;5;254m${1}\e[0m"
}

grey93bg() {
    echo -e "\e[48;5;255m${1}\e[0m"
}

#A neat little trick with an if statement to block out a bunch of lines in a script. If you want the demo, comment out the if false statement, the attached then, and lastly the fi at the bottom of the script.
if false
then

echo ""
echo "Now lets demo these colors:"
echo ""
black "This is black!"
maroon "This is maroon!"
green "This is green!"
olive "This is olive!"
navy "This is navy!"
purple "This is purple!"
teal "This is teal!"
silver "This is silver!"
grey "This is grey!"
red "This is red!"
lime "This is lime!"
yellow "This is yellow!"
blue "This is blue!"
fuchsia "This is fuchsia!"
aqua "This is aqua!"
white "This is white!"
grey0 "This is grey0!"
navyblue "This is navyblue!"
darkblue "This is darkblue!"
blue3 "This is blue3!"
blue3 "This is blue3!"
blue1 "This is blue1!"
darkgreen "This is darkgreen!"
deepskyblue4 "This is deepskyblue4!"
deepskyblue4 "This is deepskyblue4!"
deepskyblue4 "This is deepskyblue4!"
dodgerblue3 "This is dodgerblue3!"
dodgerblue2 "This is dodgerblue2!"
green4 "This is green4!"
springgreen4 "This is springgreen4!"
turquoise4 "This is turquoise4!"
deepskyblue3 "This is deepskyblue3!"
deepskyblue3 "This is deepskyblue3!"
dodgerblue1 "This is dodgerblue1!"
green3 "This is green3!"
springgreen3 "This is springgreen3!"
darkcyan "This is darkcyan!"
lightseagreen "This is lightseagreen!"
deepskyblue2 "This is deepskyblue2!"
deepskyblue1 "This is deepskyblue1!"
green3 "This is green3!"
springgreen3 "This is springgreen3!"
springgreen2 "This is springgreen2!"
cyan3 "This is cyan3!"
darkturquoise "This is darkturquoise!"
turquoise2 "This is turquoise2!"
green1 "This is green1!"
springgreen2 "This is springgreen2!"
springgreen1 "This is springgreen1!"
mediumspringgreen "This is mediumspringgreen!"
cyan2 "This is cyan2!"
cyan1 "This is cyan1!"
darkred "This is darkred!"
deeppink4 "This is deeppink4!"
purple4 "This is purple4!"
purple4 "This is purple4!"
purple3 "This is purple3!"
blueviolet "This is blueviolet!"
orange4 "This is orange4!"
grey37 "This is grey37!"
mediumpurple4 "This is mediumpurple4!"
slateblue3 "This is slateblue3!"
slateblue3 "This is slateblue3!"
royalblue1 "This is royalblue1!"
chartreuse4 "This is chartreuse4!"
darkseagreen4 "This is darkseagreen4!"
paleturquoise4 "This is paleturquoise4!"
steelblue "This is steelblue!"
steelblue3 "This is steelblue3!"
cornflowerblue "This is cornflowerblue!"
chartreuse3 "This is chartreuse3!"
darkseagreen4 "This is darkseagreen4!"
cadetblue "This is cadetblue!"
cadetblue "This is cadetblue!"
skyblue3 "This is skyblue3!"
steelblue1 "This is steelblue1!"
chartreuse3 "This is chartreuse3!"
palegreen3 "This is palegreen3!"
seagreen3 "This is seagreen3!"
aquamarine3 "This is aquamarine3!"
mediumturquoise "This is mediumturquoise!"
steelblue1 "This is steelblue1!"
chartreuse2 "This is chartreuse2!"
seagreen2 "This is seagreen2!"
seagreen1 "This is seagreen1!"
seagreen1 "This is seagreen1!"
aquamarine1 "This is aquamarine1!"
darkslategray2 "This is darkslategray2!"
darkred "This is darkred!"
deeppink4 "This is deeppink4!"
darkmagenta "This is darkmagenta!"
darkmagenta "This is darkmagenta!"
darkviolet "This is darkviolet!"
purple "This is purple!"
orange4 "This is orange4!"
lightpink4 "This is lightpink4!"
plum4 "This is plum4!"
mediumpurple3 "This is mediumpurple3!"
mediumpurple3 "This is mediumpurple3!"
slateblue1 "This is slateblue1!"
yellow4 "This is yellow4!"
wheat4 "This is wheat4!"
grey53 "This is grey53!"
lightslategrey "This is lightslategrey!"
mediumpurple "This is mediumpurple!"
lightslateblue "This is lightslateblue!"
yellow4 "This is yellow4!"
darkolivegreen3 "This is darkolivegreen3!"
darkseagreen "This is darkseagreen!"
lightskyblue3 "This is lightskyblue3!"
lightskyblue3 "This is lightskyblue3!"
skyblue2 "This is skyblue2!"
chartreuse2 "This is chartreuse2!"
darkolivegreen3 "This is darkolivegreen3!"
palegreen3 "This is palegreen3!"
darkseagreen3 "This is darkseagreen3!"
darkslategray3 "This is darkslategray3!"
skyblue1 "This is skyblue1!"
chartreuse1 "This is chartreuse1!"
lightgreen "This is lightgreen!"
lightgreen "This is lightgreen!"
palegreen1 "This is palegreen1!"
aquamarine1 "This is aquamarine1!"
darkslategray1 "This is darkslategray1!"
red3 "This is red3!"
deeppink4 "This is deeppink4!"
mediumvioletred "This is mediumvioletred!"
magenta3 "This is magenta3!"
darkviolet "This is darkviolet!"
purple "This is purple!"
darkorange3 "This is darkorange3!"
indianred "This is indianred!"
hotpink3 "This is hotpink3!"
mediumorchid3 "This is mediumorchid3!"
mediumorchid "This is mediumorchid!"
mediumpurple2 "This is mediumpurple2!"
darkgoldenrod "This is darkgoldenrod!"
lightsalmon3 "This is lightsalmon3!"
rosybrown "This is rosybrown!"
grey63 "This is grey63!"
mediumpurple2 "This is mediumpurple2!"
mediumpurple1 "This is mediumpurple1!"
gold3 "This is gold3!"
darkkhaki "This is darkkhaki!"
navajowhite3 "This is navajowhite3!"
grey69 "This is grey69!"
lightsteelblue3 "This is lightsteelblue3!"
lightsteelblue "This is lightsteelblue!"
yellow3 "This is yellow3!"
darkolivegreen3 "This is darkolivegreen3!"
darkseagreen3 "This is darkseagreen3!"
darkseagreen2 "This is darkseagreen2!"
lightcyan3 "This is lightcyan3!"
lightskyblue1 "This is lightskyblue1!"
greenyellow "This is greenyellow!"
darkolivegreen2 "This is darkolivegreen2!"
palegreen1 "This is palegreen1!"
darkseagreen2 "This is darkseagreen2!"
darkseagreen1 "This is darkseagreen1!"
paleturquoise1 "This is paleturquoise1!"
red3 "This is red3!"
deeppink3 "This is deeppink3!"
deeppink3 "This is deeppink3!"
magenta3 "This is magenta3!"
magenta3 "This is magenta3!"
magenta2 "This is magenta2!"
darkorange3 "This is darkorange3!"
indianred "This is indianred!"
hotpink3 "This is hotpink3!"
hotpink2 "This is hotpink2!"
orchid "This is orchid!"
mediumorchid1 "This is mediumorchid1!"
orange3 "This is orange3!"
lightsalmon3 "This is lightsalmon3!"
lightpink3 "This is lightpink3!"
pink3 "This is pink3!"
plum3 "This is plum3!"
violet "This is violet!"
gold3 "This is gold3!"
lightgoldenrod3 "This is lightgoldenrod3!"
tan "This is tan!"
mistyrose3 "This is mistyrose3!"
thistle3 "This is thistle3!"
plum2 "This is plum2!"
yellow3 "This is yellow3!"
khaki3 "This is khaki3!"
lightgoldenrod2 "This is lightgoldenrod2!"
lightyellow3 "This is lightyellow3!"
grey84 "This is grey84!"
lightsteelblue1 "This is lightsteelblue1!"
yellow2 "This is yellow2!"
darkolivegreen1 "This is darkolivegreen1!"
darkolivegreen1 "This is darkolivegreen1!"
darkseagreen1 "This is darkseagreen1!"
honeydew2 "This is honeydew2!"
lightcyan1 "This is lightcyan1!"
red1 "This is red1!"
deeppink2 "This is deeppink2!"
deeppink1 "This is deeppink1!"
deeppink1 "This is deeppink1!"
magenta2 "This is magenta2!"
magenta1 "This is magenta1!"
orangered1 "This is orangered1!"
indianred1 "This is indianred1!"
indianred1 "This is indianred1!"
hotpink "This is hotpink!"
hotpink "This is hotpink!"
mediumorchid1 "This is mediumorchid1!"
darkorange "This is darkorange!"
salmon1 "This is salmon1!"
lightcoral "This is lightcoral!"
palevioletred1 "This is palevioletred1!"
orchid2 "This is orchid2!"
orchid1 "This is orchid1!"
orange1 "This is orange1!"
sandybrown "This is sandybrown!"
lightsalmon1 "This is lightsalmon1!"
lightpink1 "This is lightpink1!"
pink1 "This is pink1!"
plum1 "This is plum1!"
gold1 "This is gold1!"
lightgoldenrod2 "This is lightgoldenrod2!"
lightgoldenrod2 "This is lightgoldenrod2!"
navajowhite1 "This is navajowhite1!"
mistyrose1 "This is mistyrose1!"
thistle1 "This is thistle1!"
yellow1 "This is yellow1!"
lightgoldenrod1 "This is lightgoldenrod1!"
khaki1 "This is khaki1!"
wheat1 "This is wheat1!"
cornsilk1 "This is cornsilk1!"
grey100 "This is grey100!"
grey3 "This is grey3!"
grey7 "This is grey7!"
grey11 "This is grey11!"
grey15 "This is grey15!"
grey19 "This is grey19!"
grey23 "This is grey23!"
grey27 "This is grey27!"
grey30 "This is grey30!"
grey35 "This is grey35!"
grey39 "This is grey39!"
grey42 "This is grey42!"
grey46 "This is grey46!"
grey50 "This is grey50!"
grey54 "This is grey54!"
grey58 "This is grey58!"
grey62 "This is grey62!"
grey66 "This is grey66!"
grey70 "This is grey70!"
grey74 "This is grey74!"
grey78 "This is grey78!"
grey82 "This is grey82!"
grey85 "This is grey85!"
grey89 "This is grey89!"
grey93 "This is grey93!"
echo ""
echo "Now lets demo these background colors:"
echo ""
blackbg "This is black!"
maroonbg "This is maroon!"
greenbg "This is green!"
olivebg "This is olive!"
navybg "This is navy!"
purplebg "This is purple!"
tealbg "This is teal!"
silverbg "This is silver!"
greybg "This is grey!"
redbg "This is red!"
limebg "This is lime!"
yellowbg "This is yellow!"
bluebg "This is blue!"
fuchsiabg "This is fuchsia!"
aquabg "This is aqua!"
whitebg "This is white!"
grey0bg "This is grey0!"
navybluebg "This is navyblue!"
darkbluebg "This is darkblue!"
blue3bg "This is blue3!"
blue3bg "This is blue3!"
blue1bg "This is blue1!"
darkgreenbg "This is darkgreen!"
deepskyblue4bg "This is deepskyblue4!"
deepskyblue4bg "This is deepskyblue4!"
deepskyblue4bg "This is deepskyblue4!"
dodgerblue3bg "This is dodgerblue3!"
dodgerblue2bg "This is dodgerblue2!"
green4bg "This is green4!"
springgreen4bg "This is springgreen4!"
turquoise4bg "This is turquoise4!"
deepskyblue3bg "This is deepskyblue3!"
deepskyblue3bg "This is deepskyblue3!"
dodgerblue1bg "This is dodgerblue1!"
green3bg "This is green3!"
springgreen3bg "This is springgreen3!"
darkcyanbg "This is darkcyan!"
lightseagreenbg "This is lightseagreen!"
deepskyblue2bg "This is deepskyblue2!"
deepskyblue1bg "This is deepskyblue1!"
green3bg "This is green3!"
springgreen3bg "This is springgreen3!"
springgreen2bg "This is springgreen2!"
cyan3bg "This is cyan3!"
darkturquoisebg "This is darkturquoise!"
turquoise2bg "This is turquoise2!"
green1bg "This is green1!"
springgreen2bg "This is springgreen2!"
springgreen1bg "This is springgreen1!"
mediumspringgreenbg "This is mediumspringgreen!"
cyan2bg "This is cyan2!"
cyan1bg "This is cyan1!"
darkredbg "This is darkred!"
deeppink4bg "This is deeppink4!"
purple4bg "This is purple4!"
purple4bg "This is purple4!"
purple3bg "This is purple3!"
bluevioletbg "This is blueviolet!"
orange4bg "This is orange4!"
grey37bg "This is grey37!"
mediumpurple4bg "This is mediumpurple4!"
slateblue3bg "This is slateblue3!"
slateblue3bg "This is slateblue3!"
royalblue1bg "This is royalblue1!"
chartreuse4bg "This is chartreuse4!"
darkseagreen4bg "This is darkseagreen4!"
paleturquoise4bg "This is paleturquoise4!"
steelbluebg "This is steelblue!"
steelblue3bg "This is steelblue3!"
cornflowerbluebg "This is cornflowerblue!"
chartreuse3bg "This is chartreuse3!"
darkseagreen4bg "This is darkseagreen4!"
cadetbluebg "This is cadetblue!"
cadetbluebg "This is cadetblue!"
skyblue3bg "This is skyblue3!"
steelblue1bg "This is steelblue1!"
chartreuse3bg "This is chartreuse3!"
palegreen3bg "This is palegreen3!"
seagreen3bg "This is seagreen3!"
aquamarine3bg "This is aquamarine3!"
mediumturquoisebg "This is mediumturquoise!"
steelblue1bg "This is steelblue1!"
chartreuse2bg "This is chartreuse2!"
seagreen2bg "This is seagreen2!"
seagreen1bg "This is seagreen1!"
seagreen1bg "This is seagreen1!"
aquamarine1bg "This is aquamarine1!"
darkslategray2bg "This is darkslategray2!"
darkredbg "This is darkred!"
deeppink4bg "This is deeppink4!"
darkmagentabg "This is darkmagenta!"
darkmagentabg "This is darkmagenta!"
darkvioletbg "This is darkviolet!"
purplebg "This is purple!"
orange4bg "This is orange4!"
lightpink4bg "This is lightpink4!"
plum4bg "This is plum4!"
mediumpurple3bg "This is mediumpurple3!"
mediumpurple3bg "This is mediumpurple3!"
slateblue1bg "This is slateblue1!"
yellow4bg "This is yellow4!"
wheat4bg "This is wheat4!"
grey53bg "This is grey53!"
lightslategreybg "This is lightslategrey!"
mediumpurplebg "This is mediumpurple!"
lightslatebluebg "This is lightslateblue!"
yellow4bg "This is yellow4!"
darkolivegreen3bg "This is darkolivegreen3!"
darkseagreenbg "This is darkseagreen!"
lightskyblue3bg "This is lightskyblue3!"
lightskyblue3bg "This is lightskyblue3!"
skyblue2bg "This is skyblue2!"
chartreuse2bg "This is chartreuse2!"
darkolivegreen3bg "This is darkolivegreen3!"
palegreen3bg "This is palegreen3!"
darkseagreen3bg "This is darkseagreen3!"
darkslategray3bg "This is darkslategray3!"
skyblue1bg "This is skyblue1!"
chartreuse1bg "This is chartreuse1!"
lightgreenbg "This is lightgreen!"
lightgreenbg "This is lightgreen!"
palegreen1bg "This is palegreen1!"
aquamarine1bg "This is aquamarine1!"
darkslategray1bg "This is darkslategray1!"
red3bg "This is red3!"
deeppink4bg "This is deeppink4!"
mediumvioletredbg "This is mediumvioletred!"
magenta3bg "This is magenta3!"
darkvioletbg "This is darkviolet!"
purplebg "This is purple!"
darkorange3bg "This is darkorange3!"
indianredbg "This is indianred!"
hotpink3bg "This is hotpink3!"
mediumorchid3bg "This is mediumorchid3!"
mediumorchidbg "This is mediumorchid!"
mediumpurple2bg "This is mediumpurple2!"
darkgoldenrodbg "This is darkgoldenrod!"
lightsalmon3bg "This is lightsalmon3!"
rosybrownbg "This is rosybrown!"
grey63bg "This is grey63!"
mediumpurple2bg "This is mediumpurple2!"
mediumpurple1bg "This is mediumpurple1!"
gold3bg "This is gold3!"
darkkhakibg "This is darkkhaki!"
navajowhite3bg "This is navajowhite3!"
grey69bg "This is grey69!"
lightsteelblue3bg "This is lightsteelblue3!"
lightsteelbluebg "This is lightsteelblue!"
yellow3bg "This is yellow3!"
darkolivegreen3bg "This is darkolivegreen3!"
darkseagreen3bg "This is darkseagreen3!"
darkseagreen2bg "This is darkseagreen2!"
lightcyan3bg "This is lightcyan3!"
lightskyblue1bg "This is lightskyblue1!"
greenyellowbg "This is greenyellow!"
darkolivegreen2bg "This is darkolivegreen2!"
palegreen1bg "This is palegreen1!"
darkseagreen2bg "This is darkseagreen2!"
darkseagreen1bg "This is darkseagreen1!"
paleturquoise1bg "This is paleturquoise1!"
red3bg "This is red3!"
deeppink3bg "This is deeppink3!"
deeppink3bg "This is deeppink3!"
magenta3bg "This is magenta3!"
magenta3bg "This is magenta3!"
magenta2bg "This is magenta2!"
darkorange3bg "This is darkorange3!"
indianredbg "This is indianred!"
hotpink3bg "This is hotpink3!"
hotpink2bg "This is hotpink2!"
orchidbg "This is orchid!"
mediumorchid1bg "This is mediumorchid1!"
orange3bg "This is orange3!"
lightsalmon3bg "This is lightsalmon3!"
lightpink3bg "This is lightpink3!"
pink3bg "This is pink3!"
plum3bg "This is plum3!"
violetbg "This is violet!"
gold3bg "This is gold3!"
lightgoldenrod3bg "This is lightgoldenrod3!"
tanbg "This is tan!"
mistyrose3bg "This is mistyrose3!"
thistle3bg "This is thistle3!"
plum2bg "This is plum2!"
yellow3bg "This is yellow3!"
khaki3bg "This is khaki3!"
lightgoldenrod2bg "This is lightgoldenrod2!"
lightyellow3bg "This is lightyellow3!"
grey84bg "This is grey84!"
lightsteelblue1bg "This is lightsteelblue1!"
yellow2bg "This is yellow2!"
darkolivegreen1bg "This is darkolivegreen1!"
darkolivegreen1bg "This is darkolivegreen1!"
darkseagreen1bg "This is darkseagreen1!"
honeydew2bg "This is honeydew2!"
lightcyan1bg "This is lightcyan1!"
red1bg "This is red1!"
deeppink2bg "This is deeppink2!"
deeppink1bg "This is deeppink1!"
deeppink1bg "This is deeppink1!"
magenta2bg "This is magenta2!"
magenta1bg "This is magenta1!"
orangered1bg "This is orangered1!"
indianred1bg "This is indianred1!"
indianred1bg "This is indianred1!"
hotpinkbg "This is hotpink!"
hotpinkbg "This is hotpink!"
mediumorchid1bg "This is mediumorchid1!"
darkorangebg "This is darkorange!"
salmon1bg "This is salmon1!"
lightcoralbg "This is lightcoral!"
palevioletred1bg "This is palevioletred1!"
orchid2bg "This is orchid2!"
orchid1bg "This is orchid1!"
orange1bg "This is orange1!"
sandybrownbg "This is sandybrown!"
lightsalmon1bg "This is lightsalmon1!"
lightpink1bg "This is lightpink1!"
pink1bg "This is pink1!"
plum1bg "This is plum1!"
gold1bg "This is gold1!"
lightgoldenrod2bg "This is lightgoldenrod2!"
lightgoldenrod2bg "This is lightgoldenrod2!"
navajowhite1bg "This is navajowhite1!"
mistyrose1bg "This is mistyrose1!"
thistle1bg "This is thistle1!"
yellow1bg "This is yellow1!"
lightgoldenrod1bg "This is lightgoldenrod1!"
khaki1bg "This is khaki1!"
wheat1bg "This is wheat1!"
cornsilk1bg "This is cornsilk1!"
grey100bg "This is grey100!"
grey3bg "This is grey3!"
grey7bg "This is grey7!"
grey11bg "This is grey11!"
grey15bg "This is grey15!"
grey19bg "This is grey19!"
grey23bg "This is grey23!"
grey27bg "This is grey27!"
grey30bg "This is grey30!"
grey35bg "This is grey35!"
grey39bg "This is grey39!"
grey42bg "This is grey42!"
grey46bg "This is grey46!"
grey50bg "This is grey50!"
grey54bg "This is grey54!"
grey58bg "This is grey58!"
grey62bg "This is grey62!"
grey66bg "This is grey66!"
grey70bg "This is grey70!"
grey74bg "This is grey74!"
grey78bg "This is grey78!"
grey82bg "This is grey82!"
grey85bg "This is grey85!"
grey89bg "This is grey89!"
grey93bg "This is grey93!"

fi
