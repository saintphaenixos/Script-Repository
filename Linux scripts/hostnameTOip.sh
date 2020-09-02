#bin/bash

#Written by Kent DuBack at Pima Community College February 3rd 2020, to aid in operations there.

clear

echo "Type in PCC Number"

read PCCNUMBER

PS3="Select a Campus (1-9): "
select I in\
  Any\
  29th\
  Community\ Campus\
  East\ Campus\
  El\ Pueblo\
  El\ Rio\
  Desert\ Vista\
  District\ Office\
  Downtown\ Campus\
  Northwest\ Campus\
  West\ Campus
do
  case $I in
    Any) CAMPUS=??- && break;;
    29th) CAMPUS=29- && break;;
    Community\ Campus) CAMPUS=CC- && break;;
    East\ Campus) CAMPUS=EC- && break;;
    El\ Pueblo) CAMPUS=EP- && break;;
    El\ Rio) CAMPUS=ER- && break;;
    Desert\ Vista) CAMPUS=DV- && break;;
    Downtown\ Campus) CAMPUS=DC- && break;;
    District\ Office) CAMPUS=DO- && break;;
    Northwest\ Campus) CAMPUS=NW- && break;;
    West\ Campus) CAMPUS=WC- && break;;
  esac
done

echo "Type in Room Number"

read ROOM

#Now we build the whole Suffix and set two variables via PS3 (Bash's built in list generator for asking user input).

PS3="Select Usertype (Faculty? Administration? Lab?): "
select J in\
  Manually\
  \(A\)dministrator\
  \(F\)aculty\
  \(S\)taff\
  \(M\)eeting\ or\ Conference\
  \(C\)lassroom\
  \(L\)ab\
  \(P\)ublic\
  \(I\)nstructor\
  \(D\)PS\
  \(V\)irtual\
do
  case $J in
    Manually) read SUFFIX && break;;
    \(A\)dministrator) SUFFIX=A && break;;
    \(F\)aculty\) SUFFIX=F && break;;
    \(S\)taff) SUFFIX=S && break;;
    \(M\)eeting\ or\ Conference) SUFFIX=M && break;;
    \(C\)lassroom) SUFFIX=C && break;;
    \(L\)ab) SUFFIX=L && break;;
    \(P\)ublic) SUFFIX=P && break;;
    \(I\)nstructor) SUFFIX=I && break;;
    \(D\)PS) SUFFIX=D && break;;
    \(V\)irtual) SUFFIX=V && break;;
  esac
done

PS3="Select Computer Type: "
select J in\
  Manually\
  \(C\)omputer\
  \(N\)otebook\
  \(T\)ablet\
  \(K\)iosk\
  \(M\)eeting\ Room\
  \(1\)\
  \(2\)\
  \(3\)\
  \(4\)\
do
  case $J in
    Manually) read SUFFIX && break;;
    \(A\)dministrator) SUFFIX=A && break;;
    \(F\)aculty\) SUFFIX=F && break;;
    \(S\)taff) SUFFIX=S && break;;
    \(M\)eeting\ or\ Conference) SUFFIX=M && break;;
    \(C\)lassroom) SUFFIX=C && break;;
    \(L\)ab) SUFFIX=L && break;;
    \(P\)ublic) SUFFIX=P && break;;
    \(I\)nstructor) SUFFIX=I && break;;
    \(D\)PS) SUFFIX=D && break;;
  esac
done

read SUFFIX

nslookup "$CAMPUS$ROOM$PCCNUMBER$SUFFIX"

# Code is supposed to ask for a PCC number, then add suffixes and prefixes until it is a proper PCC name, and then using the program NSLOOKUP convert that name to an IP, it should also be able to intelligently add in variables to scan all possible names and give that back as a list.
