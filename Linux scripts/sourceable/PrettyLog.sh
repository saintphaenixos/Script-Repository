#!/usr/bin/env bash

#This is a simple function to create a prettier log either from piping into this function, or by giving it one parameter which it sees as a title, and then the remaining parameter(s) being the log itself.

prettylog() {
    if (( $# == 0 )) ; then
        echo -e '#################################################################################
# !"#$%&'\''()*+,-./0123456789:;<=>?
@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~
================================================================================='
        xargs -r -I{} echo -e "{}" < /dev/stdin
        echo -e '=================================================================================
# !"#$%&'\''()*+,-./0123456789:;<=>?
@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~
#################################################################################'
    else
        echo -e "${1}" | figlet
        echo -e '#################################################################################
# !"#$%&'\''()*+,-./0123456789:;<=>?
@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~
================================================================================='
        echo -e "${@}"
        echo -e '=================================================================================
# !"#$%&'\''()*+,-./0123456789:;<=>?
@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~
#################################################################################'
    fi
}
