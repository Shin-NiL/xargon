#!/bin/sh
#Simple Xargon Menu Selector with dialog
#by Shin-NiL


episode=$(dialog                        \
   --stdout                             \
   --title 'Xargon Episode Select'      \
   --radiolist 'Select an Episode'      \
   0 0 0                                \
   1  'Beyond Reality'      on          \
   2  'The Secret Chamber'  off         \
   3  "Xargon's Fury"       off)

case $episode in
1)
   bin=xrfile01
   ;;
2)
   bin=xrfile02
   ;;
3)
   bin=xrfile03
   ;;
esac

cd `dirname $0`
LD_LIBRARY_PATH=./libs ./$bin

