#!/bin/bash -x

# if no command line arg given
# set rental to Unknown
if [ -z $1 ]
then
  rental="*** Unknown vehicle ***"
elif [ -n $1 ]
then
# otherwise make first arg as a rental
  rental=$1
fi

# use case statement to make decision for rental

