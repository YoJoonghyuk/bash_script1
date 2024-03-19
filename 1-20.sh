#!/bin/bash

if [[ "$1" == "--help" ]]; then
	echo "This script implements a simple role-playing game."
	echo "Usage: ./1-20.sh [direction]"
	echo "directions:"
	echo " l, left - Move 1 left on the map."
	echo " r, right - Move 1 right on the map."
	echo " u, up - Move 1 up on the map."
	echo " d, down - Move 1 down on the map."
	echo " quit - Exit the game loop"
	exit 0
fi

#Инициализация координат игрока
x=0
y=0

echo "Welcome to the game!"
#Вывод текущей позиции игрока
echo "Your current position is: ($x, $y)"

#Основной цикл
while true; do
	#Получаем направление
	read -p "Which direction would you like to go? (left/l,right/r,up/u,down/d,quit): " direction
	case $direction in
	"left"|"l") ((x--));;
	"right"|"r") ((x++));;
	"up"|"u") ((y++));;
	"down"|"d") ((y--));;
	"quit") echo "Exiting the game.";break;;
	*) echo "Invalid direction. Try again.";continue;;
	esac
	#Вывод текущей позиции игрока
	echo "Your current position is: ($x, $y)"
done
exit 0
