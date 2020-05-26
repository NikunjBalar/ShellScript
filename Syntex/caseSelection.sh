
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
case $rental in
	"car") rent=20;;
	"van") rent=10;;
	"jeep") rent=5;;
	"bicycle") rent=1;;
	"bike") rent=3;;
	"sportbike") rent=5;;
	*) echo "Sorry , I can not get a $rental rental for you!";;
esac
echo "for $rental rent is $rent pr km."
