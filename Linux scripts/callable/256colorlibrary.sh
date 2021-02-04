#!/bin/bash

#This is a sourceable library of functions for changing the text or background of text colors to one of the 256 colors using ANSI/VT100 Control sequences.

black() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;0m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;0m${1}\e[0m"
    fi
}

maroon() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;1m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;1m${1}\e[0m"
    fi
}

green() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;2m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;2m${1}\e[0m"
    fi
}

olive() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;3m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;3m${1}\e[0m"
    fi
}

navy() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;4m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;4m${1}\e[0m"
    fi
}

purple() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;5m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;5m${1}\e[0m"
    fi
}

teal() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;6m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;6m${1}\e[0m"
    fi
}

silver() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;7m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;7m${1}\e[0m"
    fi
}

grey() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;8m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;8m${1}\e[0m"
    fi
}

red() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;9m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;9m${1}\e[0m"
    fi
}

lime() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;10m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;10m${1}\e[0m"
    fi
}

yellow() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;11m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;11m${1}\e[0m"
    fi
}

blue() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;12m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;12m${1}\e[0m"
    fi
}

fuchsia() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;13m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;13m${1}\e[0m"
    fi
}

aqua() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;14m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;14m${1}\e[0m"
    fi
}

white() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;15m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;15m${1}\e[0m"
    fi
}

grey0() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;16m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;16m${1}\e[0m"
    fi
}

navyblue() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;17m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;17m${1}\e[0m"
    fi
}

darkblue() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;18m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;18m${1}\e[0m"
    fi
}

blue3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;19m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;19m${1}\e[0m"
    fi
}

blue3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;20m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;20m${1}\e[0m"
    fi
}

blue1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;21m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;21m${1}\e[0m"
    fi
}

darkgreen() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;22m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;22m${1}\e[0m"
    fi
}

deepskyblue4() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;23m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;23m${1}\e[0m"
    fi
}

deepskyblue4() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;24m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;24m${1}\e[0m"
    fi
}

deepskyblue4() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;25m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;25m${1}\e[0m"
    fi
}

dodgerblue3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;26m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;26m${1}\e[0m"
    fi
}

dodgerblue2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;27m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;27m${1}\e[0m"
    fi
}

green4() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;28m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;28m${1}\e[0m"
    fi
}

springgreen4() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;29m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;29m${1}\e[0m"
    fi
}

turquoise4() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;30m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;30m${1}\e[0m"
    fi
}

deepskyblue3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;31m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;31m${1}\e[0m"
    fi
}

deepskyblue3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;32m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;32m${1}\e[0m"
    fi
}

dodgerblue1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;33m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;33m${1}\e[0m"
    fi
}

green3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;34m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;34m${1}\e[0m"
    fi
}

springgreen3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;35m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;35m${1}\e[0m"
    fi
}

darkcyan() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;36m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;36m${1}\e[0m"
    fi
}

lightseagreen() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;37m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;37m${1}\e[0m"
    fi
}

deepskyblue2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;38m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;38m${1}\e[0m"
    fi
}

deepskyblue1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;39m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;39m${1}\e[0m"
    fi
}

green3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;40m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;40m${1}\e[0m"
    fi
}

springgreen3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;41m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;41m${1}\e[0m"
    fi
}

springgreen2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;42m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;42m${1}\e[0m"
    fi
}

cyan3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;43m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;43m${1}\e[0m"
    fi
}

darkturquoise() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;44m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;44m${1}\e[0m"
    fi
}

turquoise2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;45m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;45m${1}\e[0m"
    fi
}

green1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;46m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;46m${1}\e[0m"
    fi
}

springgreen2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;47m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;47m${1}\e[0m"
    fi
}

springgreen1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;48m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;48m${1}\e[0m"
    fi
}

mediumspringgreen() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;49m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;49m${1}\e[0m"
    fi
}

cyan2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;50m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;50m${1}\e[0m"
    fi
}

cyan1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;51m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;51m${1}\e[0m"
    fi
}

darkred() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;52m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;52m${1}\e[0m"
    fi
}

deeppink4() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;53m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;53m${1}\e[0m"
    fi
}

purple4() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;54m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;54m${1}\e[0m"
    fi
}

purple4() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;55m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;55m${1}\e[0m"
    fi
}

purple3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;56m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;56m${1}\e[0m"
    fi
}

blueviolet() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;57m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;57m${1}\e[0m"
    fi
}

orange4() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;58m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;58m${1}\e[0m"
    fi
}

grey37() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;59m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;59m${1}\e[0m"
    fi
}

mediumpurple4() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;60m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;60m${1}\e[0m"
    fi
}

slateblue3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;61m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;61m${1}\e[0m"
    fi
}

slateblue3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;62m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;62m${1}\e[0m"
    fi
}

royalblue1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;63m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;63m${1}\e[0m"
    fi
}

chartreuse4() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;64m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;64m${1}\e[0m"
    fi
}

darkseagreen4() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;65m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;65m${1}\e[0m"
    fi
}

paleturquoise4() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;66m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;66m${1}\e[0m"
    fi
}

steelblue() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;67m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;67m${1}\e[0m"
    fi
}

steelblue3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;68m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;68m${1}\e[0m"
    fi
}

cornflowerblue() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;69m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;69m${1}\e[0m"
    fi
}

chartreuse3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;70m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;70m${1}\e[0m"
    fi
}

darkseagreen4() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;71m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;71m${1}\e[0m"
    fi
}

cadetblue() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;72m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;72m${1}\e[0m"
    fi
}

cadetblue() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;73m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;73m${1}\e[0m"
    fi
}

skyblue3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;74m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;74m${1}\e[0m"
    fi
}

steelblue1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;75m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;75m${1}\e[0m"
    fi
}

chartreuse3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;76m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;76m${1}\e[0m"
    fi
}

palegreen3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;77m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;77m${1}\e[0m"
    fi
}

seagreen3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;78m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;78m${1}\e[0m"
    fi
}

aquamarine3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;79m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;79m${1}\e[0m"
    fi
}

mediumturquoise() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;80m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;80m${1}\e[0m"
    fi
}

steelblue1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;81m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;81m${1}\e[0m"
    fi
}

chartreuse2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;82m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;82m${1}\e[0m"
    fi
}

seagreen2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;83m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;83m${1}\e[0m"
    fi
}

seagreen1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;84m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;84m${1}\e[0m"
    fi
}

seagreen1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;85m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;85m${1}\e[0m"
    fi
}

aquamarine1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;86m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;86m${1}\e[0m"
    fi
}

darkslategray2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;87m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;87m${1}\e[0m"
    fi
}

darkred() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;88m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;88m${1}\e[0m"
    fi
}

deeppink4() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;89m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;89m${1}\e[0m"
    fi
}

darkmagenta() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;90m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;90m${1}\e[0m"
    fi
}

darkmagenta() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;91m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;91m${1}\e[0m"
    fi
}

darkviolet() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;92m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;92m${1}\e[0m"
    fi
}

purple() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;93m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;93m${1}\e[0m"
    fi
}

orange4() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;94m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;94m${1}\e[0m"
    fi
}

lightpink4() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;95m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;95m${1}\e[0m"
    fi
}

plum4() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;96m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;96m${1}\e[0m"
    fi
}

mediumpurple3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;97m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;97m${1}\e[0m"
    fi
}

mediumpurple3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;98m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;98m${1}\e[0m"
    fi
}

slateblue1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;99m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;99m${1}\e[0m"
    fi
}

yellow4() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;100m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;100m${1}\e[0m"
    fi
}

wheat4() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;101m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;101m${1}\e[0m"
    fi
}

grey53() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;102m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;102m${1}\e[0m"
    fi
}

lightslategrey() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;103m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;103m${1}\e[0m"
    fi
}

mediumpurple() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;104m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;104m${1}\e[0m"
    fi
}

lightslateblue() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;105m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;105m${1}\e[0m"
    fi
}

yellow4() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;106m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;106m${1}\e[0m"
    fi
}

darkolivegreen3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;107m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;107m${1}\e[0m"
    fi
}

darkseagreen() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;108m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;108m${1}\e[0m"
    fi
}

lightskyblue3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;109m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;109m${1}\e[0m"
    fi
}

lightskyblue3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;110m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;110m${1}\e[0m"
    fi
}

skyblue2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;111m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;111m${1}\e[0m"
    fi
}

chartreuse2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;112m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;112m${1}\e[0m"
    fi
}

darkolivegreen3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;113m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;113m${1}\e[0m"
    fi
}

palegreen3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;114m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;114m${1}\e[0m"
    fi
}

darkseagreen3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;115m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;115m${1}\e[0m"
    fi
}

darkslategray3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;116m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;116m${1}\e[0m"
    fi
}

skyblue1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;117m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;117m${1}\e[0m"
    fi
}

chartreuse1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;118m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;118m${1}\e[0m"
    fi
}

lightgreen() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;119m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;119m${1}\e[0m"
    fi
}

lightgreen() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;120m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;120m${1}\e[0m"
    fi
}

palegreen1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;121m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;121m${1}\e[0m"
    fi
}

aquamarine1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;122m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;122m${1}\e[0m"
    fi
}

darkslategray1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;123m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;123m${1}\e[0m"
    fi
}

red3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;124m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;124m${1}\e[0m"
    fi
}

deeppink4() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;125m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;125m${1}\e[0m"
    fi
}

mediumvioletred() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;126m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;126m${1}\e[0m"
    fi
}

magenta3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;127m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;127m${1}\e[0m"
    fi
}

darkviolet() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;128m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;128m${1}\e[0m"
    fi
}

purple() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;129m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;129m${1}\e[0m"
    fi
}

darkorange3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;130m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;130m${1}\e[0m"
    fi
}

indianred() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;131m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;131m${1}\e[0m"
    fi
}

hotpink3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;132m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;132m${1}\e[0m"
    fi
}

mediumorchid3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;133m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;133m${1}\e[0m"
    fi
}

mediumorchid() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;134m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;134m${1}\e[0m"
    fi
}

mediumpurple2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;135m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;135m${1}\e[0m"
    fi
}

darkgoldenrod() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;136m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;136m${1}\e[0m"
    fi
}

lightsalmon3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;137m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;137m${1}\e[0m"
    fi
}

rosybrown() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;138m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;138m${1}\e[0m"
    fi
}

grey63() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;139m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;139m${1}\e[0m"
    fi
}

mediumpurple2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;140m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;140m${1}\e[0m"
    fi
}

mediumpurple1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;141m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;141m${1}\e[0m"
    fi
}

gold3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;142m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;142m${1}\e[0m"
    fi
}

darkkhaki() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;143m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;143m${1}\e[0m"
    fi
}

navajowhite3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;144m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;144m${1}\e[0m"
    fi
}

grey69() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;145m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;145m${1}\e[0m"
    fi
}

lightsteelblue3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;146m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;146m${1}\e[0m"
    fi
}

lightsteelblue() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;147m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;147m${1}\e[0m"
    fi
}

yellow3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;148m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;148m${1}\e[0m"
    fi
}

darkolivegreen3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;149m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;149m${1}\e[0m"
    fi
}

darkseagreen3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;150m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;150m${1}\e[0m"
    fi
}

darkseagreen2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;151m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;151m${1}\e[0m"
    fi
}

lightcyan3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;152m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;152m${1}\e[0m"
    fi
}

lightskyblue1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;153m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;153m${1}\e[0m"
    fi
}

greenyellow() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;154m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;154m${1}\e[0m"
    fi
}

darkolivegreen2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;155m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;155m${1}\e[0m"
    fi
}

palegreen1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;156m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;156m${1}\e[0m"
    fi
}

darkseagreen2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;157m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;157m${1}\e[0m"
    fi
}

darkseagreen1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;158m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;158m${1}\e[0m"
    fi
}

paleturquoise1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;159m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;159m${1}\e[0m"
    fi
}

red3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;160m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;160m${1}\e[0m"
    fi
}

deeppink3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;161m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;161m${1}\e[0m"
    fi
}

deeppink3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;162m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;162m${1}\e[0m"
    fi
}

magenta3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;163m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;163m${1}\e[0m"
    fi
}

magenta3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;164m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;164m${1}\e[0m"
    fi
}

magenta2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;165m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;165m${1}\e[0m"
    fi
}

darkorange3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;166m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;166m${1}\e[0m"
    fi
}

indianred() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;167m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;167m${1}\e[0m"
    fi
}

hotpink3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;168m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;168m${1}\e[0m"
    fi
}

hotpink2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;169m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;169m${1}\e[0m"
    fi
}

orchid() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;170m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;170m${1}\e[0m"
    fi
}

mediumorchid1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;171m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;171m${1}\e[0m"
    fi
}

orange3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;172m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;172m${1}\e[0m"
    fi
}

lightsalmon3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;173m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;173m${1}\e[0m"
    fi
}

lightpink3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;174m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;174m${1}\e[0m"
    fi
}

pink3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;175m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;175m${1}\e[0m"
    fi
}

plum3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;176m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;176m${1}\e[0m"
    fi
}

violet() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;177m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;177m${1}\e[0m"
    fi
}

gold3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;178m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;178m${1}\e[0m"
    fi
}

lightgoldenrod3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;179m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;179m${1}\e[0m"
    fi
}

tan() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;180m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;180m${1}\e[0m"
    fi
}

mistyrose3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;181m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;181m${1}\e[0m"
    fi
}

thistle3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;182m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;182m${1}\e[0m"
    fi
}

plum2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;183m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;183m${1}\e[0m"
    fi
}

yellow3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;184m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;184m${1}\e[0m"
    fi
}

khaki3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;185m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;185m${1}\e[0m"
    fi
}

lightgoldenrod2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;186m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;186m${1}\e[0m"
    fi
}

lightyellow3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;187m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;187m${1}\e[0m"
    fi
}

grey84() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;188m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;188m${1}\e[0m"
    fi
}

lightsteelblue1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;189m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;189m${1}\e[0m"
    fi
}

yellow2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;190m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;190m${1}\e[0m"
    fi
}

darkolivegreen1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;191m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;191m${1}\e[0m"
    fi
}

darkolivegreen1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;192m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;192m${1}\e[0m"
    fi
}

darkseagreen1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;193m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;193m${1}\e[0m"
    fi
}

honeydew2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;194m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;194m${1}\e[0m"
    fi
}

lightcyan1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;195m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;195m${1}\e[0m"
    fi
}

red1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;196m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;196m${1}\e[0m"
    fi
}

deeppink2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;197m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;197m${1}\e[0m"
    fi
}

deeppink1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;198m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;198m${1}\e[0m"
    fi
}

deeppink1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;199m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;199m${1}\e[0m"
    fi
}

magenta2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;200m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;200m${1}\e[0m"
    fi
}

magenta1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;201m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;201m${1}\e[0m"
    fi
}

orangered1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;202m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;202m${1}\e[0m"
    fi
}

indianred1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;203m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;203m${1}\e[0m"
    fi
}

indianred1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;204m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;204m${1}\e[0m"
    fi
}

hotpink() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;205m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;205m${1}\e[0m"
    fi
}

hotpink() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;206m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;206m${1}\e[0m"
    fi
}

mediumorchid1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;207m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;207m${1}\e[0m"
    fi
}

darkorange() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;208m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;208m${1}\e[0m"
    fi
}

salmon1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;209m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;209m${1}\e[0m"
    fi
}

lightcoral() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;210m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;210m${1}\e[0m"
    fi
}

palevioletred1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;211m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;211m${1}\e[0m"
    fi
}

orchid2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;212m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;212m${1}\e[0m"
    fi
}

orchid1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;213m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;213m${1}\e[0m"
    fi
}

orange1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;214m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;214m${1}\e[0m"
    fi
}

sandybrown() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;215m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;215m${1}\e[0m"
    fi
}

lightsalmon1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;216m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;216m${1}\e[0m"
    fi
}

lightpink1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;217m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;217m${1}\e[0m"
    fi
}

pink1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;218m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;218m${1}\e[0m"
    fi
}

plum1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;219m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;219m${1}\e[0m"
    fi
}

gold1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;220m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;220m${1}\e[0m"
    fi
}

lightgoldenrod2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;221m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;221m${1}\e[0m"
    fi
}

lightgoldenrod2() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;222m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;222m${1}\e[0m"
    fi
}

navajowhite1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;223m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;223m${1}\e[0m"
    fi
}

mistyrose1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;224m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;224m${1}\e[0m"
    fi
}

thistle1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;225m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;225m${1}\e[0m"
    fi
}

yellow1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;226m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;226m${1}\e[0m"
    fi
}

lightgoldenrod1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;227m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;227m${1}\e[0m"
    fi
}

khaki1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;228m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;228m${1}\e[0m"
    fi
}

wheat1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;229m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;229m${1}\e[0m"
    fi
}

cornsilk1() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;230m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;230m${1}\e[0m"
    fi
}

grey100() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;231m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;231m${1}\e[0m"
    fi
}

grey3() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;232m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;232m${1}\e[0m"
    fi
}

grey7() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;233m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;233m${1}\e[0m"
    fi
}

grey11() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;234m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;234m${1}\e[0m"
    fi
}

grey15() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;235m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;235m${1}\e[0m"
    fi
}

grey19() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;236m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;236m${1}\e[0m"
    fi
}

grey23() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;237m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;237m${1}\e[0m"
    fi
}

grey27() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;238m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;238m${1}\e[0m"
    fi
}

grey30() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;239m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;239m${1}\e[0m"
    fi
}

grey35() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;240m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;240m${1}\e[0m"
    fi
}

grey39() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;241m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;241m${1}\e[0m"
    fi
}

grey42() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;242m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;242m${1}\e[0m"
    fi
}

grey46() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;243m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;243m${1}\e[0m"
    fi
}

grey50() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;244m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;244m${1}\e[0m"
    fi
}

grey54() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;245m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;245m${1}\e[0m"
    fi
}

grey58() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;246m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;246m${1}\e[0m"
    fi
}

grey62() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;247m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;247m${1}\e[0m"
    fi
}

grey66() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;248m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;248m${1}\e[0m"
    fi
}

grey70() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;249m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;249m${1}\e[0m"
    fi
}

grey74() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;250m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;250m${1}\e[0m"
    fi
}

grey78() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;251m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;251m${1}\e[0m"
    fi
}

grey82() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;252m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;252m${1}\e[0m"
    fi
}

grey85() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;253m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;253m${1}\e[0m"
    fi
}

grey89() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;254m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;254m${1}\e[0m"
    fi
}

grey93() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;255m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[38;5;255m${1}\e[0m"
    fi
}

blackbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;0m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;0m${1}\e[0m"
    fi
}

maroonbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;1m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;1m${1}\e[0m"
    fi
}

greenbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;2m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;2m${1}\e[0m"
    fi
}

olivebg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;3m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;3m${1}\e[0m"
    fi
}

navybg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;4m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;4m${1}\e[0m"
    fi
}

purplebg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;5m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;5m${1}\e[0m"
    fi
}

tealbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;6m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;6m${1}\e[0m"
    fi
}

silverbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;7m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;7m${1}\e[0m"
    fi
}

greybg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;8m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;8m${1}\e[0m"
    fi
}

redbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;9m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;9m${1}\e[0m"
    fi
}

limebg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;10m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;10m${1}\e[0m"
    fi
}

yellowbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;11m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;11m${1}\e[0m"
    fi
}

bluebg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;12m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;12m${1}\e[0m"
    fi
}

fuchsiabg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;13m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;13m${1}\e[0m"
    fi
}

aquabg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;14m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;14m${1}\e[0m"
    fi
}

whitebg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;15m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;15m${1}\e[0m"
    fi
}

grey0bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;16m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;16m${1}\e[0m"
    fi
}

navybluebg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;17m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;17m${1}\e[0m"
    fi
}

darkbluebg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;18m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;18m${1}\e[0m"
    fi
}

blue3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;19m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;19m${1}\e[0m"
    fi
}

blue3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;20m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;20m${1}\e[0m"
    fi
}

blue1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;21m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;21m${1}\e[0m"
    fi
}

darkgreenbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;22m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;22m${1}\e[0m"
    fi
}

deepskyblue4bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;23m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;23m${1}\e[0m"
    fi
}

deepskyblue4bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;24m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;24m${1}\e[0m"
    fi
}

deepskyblue4bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;25m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;25m${1}\e[0m"
    fi
}

dodgerblue3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;26m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;26m${1}\e[0m"
    fi
}

dodgerblue2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;27m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;27m${1}\e[0m"
    fi
}

green4bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;28m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;28m${1}\e[0m"
    fi
}

springgreen4bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;29m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;29m${1}\e[0m"
    fi
}

turquoise4bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;30m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;30m${1}\e[0m"
    fi
}

deepskyblue3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;31m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;31m${1}\e[0m"
    fi
}

deepskyblue3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;32m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;32m${1}\e[0m"
    fi
}

dodgerblue1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;33m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;33m${1}\e[0m"
    fi
}

green3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;34m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;34m${1}\e[0m"
    fi
}

springgreen3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;35m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;35m${1}\e[0m"
    fi
}

darkcyanbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;36m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;36m${1}\e[0m"
    fi
}

lightseagreenbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;37m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;37m${1}\e[0m"
    fi
}

deepskyblue2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;38m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;38m${1}\e[0m"
    fi
}

deepskyblue1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;39m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;39m${1}\e[0m"
    fi
}

green3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;40m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;40m${1}\e[0m"
    fi
}

springgreen3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;41m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;41m${1}\e[0m"
    fi
}

springgreen2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;42m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;42m${1}\e[0m"
    fi
}

cyan3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;43m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;43m${1}\e[0m"
    fi
}

darkturquoisebg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;44m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;44m${1}\e[0m"
    fi
}

turquoise2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;45m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;45m${1}\e[0m"
    fi
}

green1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;46m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;46m${1}\e[0m"
    fi
}

springgreen2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;47m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;47m${1}\e[0m"
    fi
}

springgreen1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;48m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;48m${1}\e[0m"
    fi
}

mediumspringgreenbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;49m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;49m${1}\e[0m"
    fi
}

cyan2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;50m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;50m${1}\e[0m"
    fi
}

cyan1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;51m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;51m${1}\e[0m"
    fi
}

darkredbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;52m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;52m${1}\e[0m"
    fi
}

deeppink4bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;53m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;53m${1}\e[0m"
    fi
}

purple4bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;54m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;54m${1}\e[0m"
    fi
}

purple4bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;55m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;55m${1}\e[0m"
    fi
}

purple3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;56m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;56m${1}\e[0m"
    fi
}

bluevioletbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;57m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;57m${1}\e[0m"
    fi
}

orange4bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;58m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;58m${1}\e[0m"
    fi
}

grey37bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;59m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;59m${1}\e[0m"
    fi
}

mediumpurple4bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;60m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;60m${1}\e[0m"
    fi
}

slateblue3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;61m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;61m${1}\e[0m"
    fi
}

slateblue3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;62m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;62m${1}\e[0m"
    fi
}

royalblue1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;63m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;63m${1}\e[0m"
    fi
}

chartreuse4bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;64m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;64m${1}\e[0m"
    fi
}

darkseagreen4bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;65m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;65m${1}\e[0m"
    fi
}

paleturquoise4bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;66m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;66m${1}\e[0m"
    fi
}

steelbluebg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;67m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;67m${1}\e[0m"
    fi
}

steelblue3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;68m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;68m${1}\e[0m"
    fi
}

cornflowerbluebg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;69m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;69m${1}\e[0m"
    fi
}

chartreuse3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;70m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;70m${1}\e[0m"
    fi
}

darkseagreen4bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;71m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;71m${1}\e[0m"
    fi
}

cadetbluebg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;72m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;72m${1}\e[0m"
    fi
}

cadetbluebg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;73m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;73m${1}\e[0m"
    fi
}

skyblue3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;74m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;74m${1}\e[0m"
    fi
}

steelblue1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;75m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;75m${1}\e[0m"
    fi
}

chartreuse3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;76m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;76m${1}\e[0m"
    fi
}

palegreen3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;77m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;77m${1}\e[0m"
    fi
}

seagreen3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;78m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;78m${1}\e[0m"
    fi
}

aquamarine3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;79m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;79m${1}\e[0m"
    fi
}

mediumturquoisebg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;80m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;80m${1}\e[0m"
    fi
}

steelblue1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;81m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;81m${1}\e[0m"
    fi
}

chartreuse2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;82m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;82m${1}\e[0m"
    fi
}

seagreen2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;83m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;83m${1}\e[0m"
    fi
}

seagreen1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;84m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;84m${1}\e[0m"
    fi
}

seagreen1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;85m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;85m${1}\e[0m"
    fi
}

aquamarine1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;86m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;86m${1}\e[0m"
    fi
}

darkslategray2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;87m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;87m${1}\e[0m"
    fi
}

darkredbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;88m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;88m${1}\e[0m"
    fi
}

deeppink4bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;89m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;89m${1}\e[0m"
    fi
}

darkmagentabg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;90m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;90m${1}\e[0m"
    fi
}

darkmagentabg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;91m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;91m${1}\e[0m"
    fi
}

darkvioletbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;92m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;92m${1}\e[0m"
    fi
}

purplebg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;93m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;93m${1}\e[0m"
    fi
}

orange4bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;94m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;94m${1}\e[0m"
    fi
}

lightpink4bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;95m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;95m${1}\e[0m"
    fi
}

plum4bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;96m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;96m${1}\e[0m"
    fi
}

mediumpurple3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;97m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;97m${1}\e[0m"
    fi
}

mediumpurple3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;98m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;98m${1}\e[0m"
    fi
}

slateblue1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;99m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;99m${1}\e[0m"
    fi
}

yellow4bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;100m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;100m${1}\e[0m"
    fi
}

wheat4bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;101m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;101m${1}\e[0m"
    fi
}

grey53bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;102m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;102m${1}\e[0m"
    fi
}

lightslategreybg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;103m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;103m${1}\e[0m"
    fi
}

mediumpurplebg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;104m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;104m${1}\e[0m"
    fi
}

lightslatebluebg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;105m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;105m${1}\e[0m"
    fi
}

yellow4bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;106m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;106m${1}\e[0m"
    fi
}

darkolivegreen3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;107m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;107m${1}\e[0m"
    fi
}

darkseagreenbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;108m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;108m${1}\e[0m"
    fi
}

lightskyblue3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;109m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;109m${1}\e[0m"
    fi
}

lightskyblue3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;110m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;110m${1}\e[0m"
    fi
}

skyblue2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;111m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;111m${1}\e[0m"
    fi
}

chartreuse2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;112m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;112m${1}\e[0m"
    fi
}

darkolivegreen3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;113m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;113m${1}\e[0m"
    fi
}

palegreen3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;114m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;114m${1}\e[0m"
    fi
}

darkseagreen3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;115m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;115m${1}\e[0m"
    fi
}

darkslategray3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;116m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;116m${1}\e[0m"
    fi
}

skyblue1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;117m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;117m${1}\e[0m"
    fi
}

chartreuse1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;118m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;118m${1}\e[0m"
    fi
}

lightgreenbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;119m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;119m${1}\e[0m"
    fi
}

lightgreenbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;120m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;120m${1}\e[0m"
    fi
}

palegreen1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;121m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;121m${1}\e[0m"
    fi
}

aquamarine1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;122m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;122m${1}\e[0m"
    fi
}

darkslategray1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;123m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;123m${1}\e[0m"
    fi
}

red3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;124m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;124m${1}\e[0m"
    fi
}

deeppink4bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;125m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;125m${1}\e[0m"
    fi
}

mediumvioletredbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;126m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;126m${1}\e[0m"
    fi
}

magenta3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;127m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;127m${1}\e[0m"
    fi
}

darkvioletbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;128m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;128m${1}\e[0m"
    fi
}

purplebg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;129m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;129m${1}\e[0m"
    fi
}

darkorange3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;130m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;130m${1}\e[0m"
    fi
}

indianredbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;131m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;131m${1}\e[0m"
    fi
}

hotpink3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;132m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;132m${1}\e[0m"
    fi
}

mediumorchid3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;133m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;133m${1}\e[0m"
    fi
}

mediumorchidbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;134m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;134m${1}\e[0m"
    fi
}

mediumpurple2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;135m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;135m${1}\e[0m"
    fi
}

darkgoldenrodbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;136m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;136m${1}\e[0m"
    fi
}

lightsalmon3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;137m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;137m${1}\e[0m"
    fi
}

rosybrownbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;138m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;138m${1}\e[0m"
    fi
}

grey63bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;139m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;139m${1}\e[0m"
    fi
}

mediumpurple2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;140m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;140m${1}\e[0m"
    fi
}

mediumpurple1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;141m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;141m${1}\e[0m"
    fi
}

gold3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;142m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;142m${1}\e[0m"
    fi
}

darkkhakibg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;143m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;143m${1}\e[0m"
    fi
}

navajowhite3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;144m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;144m${1}\e[0m"
    fi
}

grey69bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;145m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;145m${1}\e[0m"
    fi
}

lightsteelblue3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;146m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;146m${1}\e[0m"
    fi
}

lightsteelbluebg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;147m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;147m${1}\e[0m"
    fi
}

yellow3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;148m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;148m${1}\e[0m"
    fi
}

darkolivegreen3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;149m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;149m${1}\e[0m"
    fi
}

darkseagreen3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;150m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;150m${1}\e[0m"
    fi
}

darkseagreen2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;151m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;151m${1}\e[0m"
    fi
}

lightcyan3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;152m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;152m${1}\e[0m"
    fi
}

lightskyblue1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;153m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;153m${1}\e[0m"
    fi
}

greenyellowbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;154m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;154m${1}\e[0m"
    fi
}

darkolivegreen2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;155m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;155m${1}\e[0m"
    fi
}

palegreen1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;156m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;156m${1}\e[0m"
    fi
}

darkseagreen2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;157m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;157m${1}\e[0m"
    fi
}

darkseagreen1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;158m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;158m${1}\e[0m"
    fi
}

paleturquoise1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;159m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;159m${1}\e[0m"
    fi
}

red3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;160m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;160m${1}\e[0m"
    fi
}

deeppink3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;161m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;161m${1}\e[0m"
    fi
}

deeppink3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;162m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;162m${1}\e[0m"
    fi
}

magenta3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;163m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;163m${1}\e[0m"
    fi
}

magenta3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;164m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;164m${1}\e[0m"
    fi
}

magenta2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;165m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;165m${1}\e[0m"
    fi
}

darkorange3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;166m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;166m${1}\e[0m"
    fi
}

indianredbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;167m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;167m${1}\e[0m"
    fi
}

hotpink3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;168m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;168m${1}\e[0m"
    fi
}

hotpink2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;169m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;169m${1}\e[0m"
    fi
}

orchidbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;170m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;170m${1}\e[0m"
    fi
}

mediumorchid1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;171m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;171m${1}\e[0m"
    fi
}

orange3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;172m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;172m${1}\e[0m"
    fi
}

lightsalmon3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;173m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;173m${1}\e[0m"
    fi
}

lightpink3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;174m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;174m${1}\e[0m"
    fi
}

pink3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;175m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;175m${1}\e[0m"
    fi
}

plum3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;176m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;176m${1}\e[0m"
    fi
}

violetbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;177m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;177m${1}\e[0m"
    fi
}

gold3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;178m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;178m${1}\e[0m"
    fi
}

lightgoldenrod3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;179m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;179m${1}\e[0m"
    fi
}

tanbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;180m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;180m${1}\e[0m"
    fi
}

mistyrose3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;181m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;181m${1}\e[0m"
    fi
}

thistle3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;182m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;182m${1}\e[0m"
    fi
}

plum2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;183m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;183m${1}\e[0m"
    fi
}

yellow3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;184m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;184m${1}\e[0m"
    fi
}

khaki3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;185m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;185m${1}\e[0m"
    fi
}

lightgoldenrod2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;186m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;186m${1}\e[0m"
    fi
}

lightyellow3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;187m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;187m${1}\e[0m"
    fi
}

grey84bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;188m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;188m${1}\e[0m"
    fi
}

lightsteelblue1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;189m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;189m${1}\e[0m"
    fi
}

yellow2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;190m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;190m${1}\e[0m"
    fi
}

darkolivegreen1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;191m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;191m${1}\e[0m"
    fi
}

darkolivegreen1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;192m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;192m${1}\e[0m"
    fi
}

darkseagreen1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;193m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;193m${1}\e[0m"
    fi
}

honeydew2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;194m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;194m${1}\e[0m"
    fi
}

lightcyan1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;195m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;195m${1}\e[0m"
    fi
}

red1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;196m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;196m${1}\e[0m"
    fi
}

deeppink2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;197m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;197m${1}\e[0m"
    fi
}

deeppink1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;198m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;198m${1}\e[0m"
    fi
}

deeppink1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;199m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;199m${1}\e[0m"
    fi
}

magenta2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;200m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;200m${1}\e[0m"
    fi
}

magenta1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;201m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;201m${1}\e[0m"
    fi
}

orangered1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;202m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;202m${1}\e[0m"
    fi
}

indianred1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;203m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;203m${1}\e[0m"
    fi
}

indianred1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;204m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;204m${1}\e[0m"
    fi
}

hotpinkbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;205m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;205m${1}\e[0m"
    fi
}

hotpinkbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;206m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;206m${1}\e[0m"
    fi
}

mediumorchid1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;207m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;207m${1}\e[0m"
    fi
}

darkorangebg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;208m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;208m${1}\e[0m"
    fi
}

salmon1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;209m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;209m${1}\e[0m"
    fi
}

lightcoralbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;210m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;210m${1}\e[0m"
    fi
}

palevioletred1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;211m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;211m${1}\e[0m"
    fi
}

orchid2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;212m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;212m${1}\e[0m"
    fi
}

orchid1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;213m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;213m${1}\e[0m"
    fi
}

orange1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;214m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;214m${1}\e[0m"
    fi
}

sandybrownbg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;215m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;215m${1}\e[0m"
    fi
}

lightsalmon1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;216m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;216m${1}\e[0m"
    fi
}

lightpink1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;217m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;217m${1}\e[0m"
    fi
}

pink1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;218m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;218m${1}\e[0m"
    fi
}

plum1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;219m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;219m${1}\e[0m"
    fi
}

gold1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;220m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;220m${1}\e[0m"
    fi
}

lightgoldenrod2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;221m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;221m${1}\e[0m"
    fi
}

lightgoldenrod2bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;222m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;222m${1}\e[0m"
    fi
}

navajowhite1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;223m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;223m${1}\e[0m"
    fi
}

mistyrose1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;224m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;224m${1}\e[0m"
    fi
}

thistle1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;225m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;225m${1}\e[0m"
    fi
}

yellow1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;226m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;226m${1}\e[0m"
    fi
}

lightgoldenrod1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;227m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;227m${1}\e[0m"
    fi
}

khaki1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;228m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;228m${1}\e[0m"
    fi
}

wheat1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;229m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;229m${1}\e[0m"
    fi
}

cornsilk1bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;230m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;230m${1}\e[0m"
    fi
}

grey100bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;231m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;231m${1}\e[0m"
    fi
}

grey3bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;232m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;232m${1}\e[0m"
    fi
}

grey7bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;233m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;233m${1}\e[0m"
    fi
}

grey11bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;234m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;234m${1}\e[0m"
    fi
}

grey15bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;235m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;235m${1}\e[0m"
    fi
}

grey19bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;236m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;236m${1}\e[0m"
    fi
}

grey23bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;237m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;237m${1}\e[0m"
    fi
}

grey27bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;238m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;238m${1}\e[0m"
    fi
}

grey30bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;239m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;239m${1}\e[0m"
    fi
}

grey35bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;240m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;240m${1}\e[0m"
    fi
}

grey39bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;241m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;241m${1}\e[0m"
    fi
}

grey42bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;242m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;242m${1}\e[0m"
    fi
}

grey46bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;243m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;243m${1}\e[0m"
    fi
}

grey50bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;244m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;244m${1}\e[0m"
    fi
}

grey54bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;245m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;245m${1}\e[0m"
    fi
}

grey58bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;246m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;246m${1}\e[0m"
    fi
}

grey62bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;247m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;247m${1}\e[0m"
    fi
}

grey66bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;248m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;248m${1}\e[0m"
    fi
}

grey70bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;249m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;249m${1}\e[0m"
    fi
}

grey74bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;250m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;250m${1}\e[0m"
    fi
}

grey78bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;251m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;251m${1}\e[0m"
    fi
}

grey82bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;252m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;252m${1}\e[0m"
    fi
}

grey85bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;253m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;253m${1}\e[0m"
    fi
}

grey89bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;254m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;254m${1}\e[0m"
    fi
}

grey93bg() {
    if (( $# == 0 )) ; then
        xargs -I{} echo -e "\e[38;5;255m{}\e[0m" < /dev/stdin
    else
        echo -e "\e[48;5;255m${1}\e[0m"
    fi
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
