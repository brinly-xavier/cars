#! /bin/bash
#cars.sh
#Brinly Xavier

quit=True
while $quit
do
	echo "Enter (A)to enter a car, (B)to list the cars, or (C)to quit"
	read MENU
	case $MENU in
	"A")
		echo "Enter the Year of the car"
		read YEAR
		echo "Enter the make of the car"
		read MAKE
		echo "Enter the model of the car"
		read MODEL
		carName=$YEAR" "$MAKE" "$MODEL
		echo $carName >> "My_old_cars.txt"
		;;
	"B")
		sort -n "My_old_cars.txt"
		;;
	"C")
		quit=false
		;;
	esac
done
echo "Goodbye"
