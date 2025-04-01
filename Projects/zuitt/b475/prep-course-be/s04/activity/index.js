/*
	
  1. Create a function called "getSum" which will be able to add two numbers.
    - Two Numbers must be provided as arguments.
    - function should return the sum of the two numbers.
    Create a new variable called "sum".
    - This "sum" variable should be able to receive and store the result of "getSum" function.
    - Log the value of "sum" variable in the console.
*/

function getSum(num1, num2) {
  return 'Displayed sum of ' + num1 + ' and ' + num2 + ' is ' + (num1 + num2);
}

let sum = getSum(7, 21);
console.log(sum);



/*
  2. Create a function called "getDifference" which will be able to subtract two numbers.
    - Two Numbers must be provided as arguments.
    - function should return the difference of the two numbers.
    Create a new variable called difference.
      - This "difference" variable should be able to receive and store the result of "getDifference" function.
      - Log the value of "difference" variable in the console.
*/

function getDifference(num1, num2) {
  return 'Displayed difference of ' + num1 + ' and ' + num2 + ' is ' + (num1 - num2);
}

let difference = getDifference(35, 18);
console.log(difference);



/*
  3. Create a function called "getProduct" which will be able to multiply two numbers.
    - Two Numbers must be provided as arguments.
    - function should return product of the two numbers.
    Create a new variable called "product".
    - This "product" variable should be able to receive and store the result of "getProduct" function.
    - Log the value of "product" variable in the console.
*/

function getProduct(num1, num2) {
  return 'The product of ' + num1 + ' and ' + num2 + ' is ' + (num1 * num2);
}

let product = getProduct(3, 15);
console.log(product);

/*
  4. Create a function called "getQuotient" which will be able to divide two numbers.
    - Two Numbers must be provided as arguments.
    - function should return quotient of the two numbers.
    Create a new variable called quotient.
    - This "quotient" variable should be able to receive and store the result of "getQuotient" function.
    - Log the value of "quotient" variable in the console.
*/

function getQuotient(num1, num2) {
  return 'The quotient of ' + num1 + ' and ' + num2 + ' is ' + (num1 / num2);
}

let quotient = getQuotient(81, 9);
console.log(quotient);


/*
  5. Create a function called "getSquarePerimeter" which will be able to get the total perimeter of a square from a provided "sideLength".
    - A number should be provided as an argument.
    - Look up the formula for calculating the perimeter of a square with a provided/given side length.
    - Return the result of the perimeter calculation.
    Create a new variable called "squarePerimeter".
    - This variable should be able to receive and store the result of the "getSquarePerimeter" function.
    - Log the value of the "squarePerimeter" variable in the console.
*/

function getSquarePerimeter(sideLength) {
  return 'The result of getting the perimeter of a square with ' + sideLength + ' length on each side: ' + (4 * sideLength);
}

let squarePerimeter = getSquarePerimeter(30);
console.log(squarePerimeter);


/*
  6. Create a function "getStudentAverage" which will be able to get total average of four numbers.
    - Four numbers should be provided as an argument.
    - Look up the formula for calculating the average of numbers.
    - Return the result of the average calculation.
    Create a new variable called "averageScore".
    - This variable should be able to receive and store the result of the "getStudentAverage" function.
    - Log the value of the "averageScore" variable in the console.
*/

function getStudentAverage(num1, num2, num3, num4) {
  return 'The average of ' + num1 + ', ' + num2 + ', ' + num3 + ', and ' + num4 + ' is ' + ((num1 + num2 + num3 + num4) / 4);
}
let averageScore = getStudentAverage(90, 77, 81, 42);
console.log(averageScore);


/*
  7. Create a function called "checkPassingScore" which will be able to check if the student score passed by checking the percentage of the score against the passing percentage.
    - This function should take two numbers as an argument, your score and the total score.
    - First, get the percentage of your score against the total. You can look up the - formula to get percentage.
    - Using a relational operator, check if your score percentage is greater than 75, the passing percentage. Save the value of the comparison in a variable called "isScorePassing".
    - Return the value of the variable "isScorePassing".
    - This function should return a boolean.
    Create a new variable called "isScorePassing".
    - This variable should be able to receive and store the boolean result of the "checkPassingScore" function.
    - Log the value of the isPassingScore variable in the console.
*/

function checkPassingScore(score, totalScore) {
  return 'Is ' + score + '/' + totalScore + ' a passing score?' + ' ' + (((score / totalScore) * 100) > 75);
}
let isScorePassing = checkPassingScore(76, 100);
console.log(isScorePassing);
