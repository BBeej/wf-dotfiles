#!/bin/bash

#  1 for next workspace
# -1 for prev workspace
CURRENT_WORKSPACE=$(xprop -root _NET_CURRENT_DESKTOP | awk '{print $3}')
NEW_WORKSPACE=$(($CURRENT_WORKSPACE + $1))

if [ $NEW_WORKSPACE -lt 0 ]; then
    NEW_WORKSPACE=9; 
elif [ $NEW_WORKSPACE -gt 9 ]; then 
    NEW_WORKSPACE=0; fi

echo CURRENT:$CURRENT_WORKSPACE NEXT:$NEW_WORKSPACE

berryc switch_workspace $NEW_WORKSPACE
