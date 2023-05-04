//факториал числа

let input = prompt("If you want to calculate a factorial, please enter a number");
let fact = 1;

for (var i = 1; i <= input; i++) {
	fact = fact*i;
}

alert("Factorial = " + fact);