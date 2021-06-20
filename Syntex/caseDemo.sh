#!/bin/bash -x
read -p "Enter the vehical name " rental
case $rental in
        "car")
		rent=20
		;;
        "van")
		rent=10
		;;
        "jeep")
		rent=5
		;;
        "bicycle")
		rent=1
		;;
        "bike")
		rent=3
		;;
        "sportbike")
		rent=5
		;;
        *) echo "Sorry , I can not get a $rental rental for you!";;
esac
echo "for $rental rent is $rent pr km."
