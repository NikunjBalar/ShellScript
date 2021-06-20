#!/bin/bash -x

declare -A sound
sound[cow]="moo"
sound[cow]="mooo"
sound[dog]="bark"
sound[duck]="quack"
sound[lion]="roar"
sound[Cat]="meow"

echo "cow sound" ${sound[cow]}
echo "all animal sound" ${sound[*]}
echo "all keys" ${!sound[*]}
echo "number of animals" ${#sound[*]}
unset sound[dog]
echo ${sound[@]}
