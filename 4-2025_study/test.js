/* 
    1. In the S29 folder, create an activity folder and an index.html and index.js file inside of it.
    - Create an index.html file to attach our index.js file
    - Copy the template from any code-sharing platforms sent by the instructor and paste it in an index.js file.
    - Update your local sessions git repository and push to git with the commit message of Add template code s29.
    - Console log the message Hello World to ensure that the script file is properly associated with the html file.
*/

/*
    Create functions which can manipulate our arrays.
*/

let registeredPlanets = ["Mercury", "Venus", "Earth", "Mars"];
console.log(registeredPlanets);
let registeredAstronomers = [];
console.log(registeredAstronomers);

/*
    
    2. Create a function called addPlanet which will allow us to register/add new planets into the registeredPlanets list.
        - It will receive an array and a planet as parameters
        - add the received planet into the array.
        - return the array.
        - Invoke the function and pass the registeredPlanets and a planet as arguments
*/


function addPlanet(array, planet){
  array.push(planet);
  return array;
}

console.log(addPlanet(registeredPlanets, "Pluto"))


/*
3. Create a function called deletePlanet which will delete the last planet you have added in the registeredPlanets array.
    - It will receive an array as parameter.
    - If the array is not empty, delete the last planet in the array
    - Else return a message:
        - "No planets registered."
    - Invoke the function and pass the registeredPlanets array as an argument.

*/

function deletePlanet(array){
  if(array.length > 0){
    array.pop();
    return array;
  }
  else{
    return "No planets registered."
  }
}

console.log(deletePlanet(registeredPlanets));



/*
4. Create a function called displayNumberOfPlanets which will display the amount of registeredPlanets in our array,
    - It will receive an array as parameter
    - If the array is not empty, return the number of elements.
    - Else return the message:
        - "No planets registered."
    - Invoke the function and pass the registeredPlanets array as an argument.
*/

function displayNumberOfPlanets(array){
  if(array.length > 0){
    return array.length;
  }
  else{
    return "No planets registered."
  }
}

console.log(displayNumberOfPlanets(registeredPlanets));




/*
5. Create a function called sortPlanets which will sort the registeredPlanets array in alphabetical order when invoked:
    - It will receive an array as parameter
    - If the array is not empty, return the sorted array.
    - Else, return "No planets registered"
    - Invoke the function with registeredPlanets as an argument
    

*/


function sortPlanets(array){
  if(array.length > 0){
    return array.sort();
  }
  else{
    return "No planets registered."
  }
}

console.log(sortPlanets(registeredPlanets));




/* 
6. Create a function called unshiftPlanet which will add a planet in the registeredPlanets array using unshift().
    - It will receive an array and a planet as parameters
    - Use unshift method to add the sent argument to the array
    - Return the array
    - Invoke the function and pass the registeredPlanets and a planet as arguments
    
*/


function unshiftPlanet(array, newPlanet){
  array.unshift(newPlanet);
  return array;
}

console.log(unshiftPlanet(registeredPlanets, "Nemic"));


/* 
7. Create a function called shiftPlanet which will delete a planet in the registeredPlanets array using shift().
    - It will receive an array as parameter
    - If the array is not empty,
        - Use shift method to delete the first element to the array
        - Return the deleted element
    - Else return "No planets registered"
    - Invoke the function and pass the registeredPlanets array as an argument
*/


function shiftPlanet(array){
  if(array.length >0){
    let deletedPlanet = array.shift();
    return deletedPlanet;
  }
  else{
    return "No planets registered"
  }
}


console.log(shiftPlanet(registeredPlanets))




/*
8. Create a function called registerAstronomer.
    - It will receive 2 arrays, and 2 strings as parameters:
        - (array, name, achievements, planetsDiscovered)
    - Inside the function, create an object called astronomer.
        - The astronomer object should have 3 properties: 
            - astronomerName: String
            - astronomerAchievements: String
            - planetsDiscovered: Array
        - Pass the values of the appropriate parameter to each property.
    - Add the astronomer variable to the array.
    - Return the array where the astronomer has been added.
    - Invoke the function and pass the appropriate parameters.

*/

function registerAstronomer(array, name, achievements, planetsDiscovered){
  let astronomer = {
    astronomerName: name,
    astronomerAchievements: achievements,
    planetsDiscovered: planetsDiscovered
  }
  array.push(astronomer);
  return array;
}

console.log(registerAstronomer(registeredAstronomers, "Goku", "Destroyed planet Nemic", ["PlanetPikachu", "PlanetRaichu"]))





/* 
9. Create a function called reversePlanets which will reverse the current order of the registeredPlanets array using reverse()
    - It will receive an array as parameter
    - Look up the use of reverse() in javascript arrays
    - Use reverse() to reverse the current order of array
    - Return the reversed array
    - Invoke the function and pass the registeredPlanets array as an argument.

*/


function reversePlanets(array){
  array.reverse();
  return array;
}

console.log(reversePlanets(registeredPlanets))





/* 
10. Create a function called copiedPlanets which will replace some planets with duplicates
    - It will receive an array as parameter
    - Look up the use of copyWithin() in javascript arrays
    - Use copyWithin() to copy a range of elements in the array
    - Return the copied array
    - Invoke the function and pass the registeredPlanets array as an argument.
*/


function copiedPlanets(array){
  array.copyWithin(0, 3);
  return array;
}

console.log(copiedPlanets(registeredPlanets))



/* 
11. Create a function called fillPlanets which will replace elements in the registeredPlanets array with static values using fill():
    - It will receive an array and a planet as parameters
    - Look up the use of fill() in javascript arrays
    - Use fill() to replace all elements in the array with the planet received as argument.
    - Return the filled array
    - Invoke the function and pass the registeredPlanets array and a planet as a parameter
*/


function fillPlanets(array, planet){
  array.fill(planet, 0);
  return array;
}

console.log(fillPlanets(registeredPlanets, "Wahaha"));





/* 
12. Create a function called splicePlanets which will  which will replace elements in the registeredPlanets array with static values using splice().
    - It will receive an array and a planet as parameters
    - Use splice() to replace an element in the array with the planet received as argument.
    - Return the array
    - Invoke the function and pass the registeredPlanets array and a planet as a parameter
*/

function splicePlanets(array, planet){
  array.splice(1, 1, planet);
  return array;
}

console.log(splicePlanets(registeredPlanets, "Wewewe"));





/* 

    13. Debug the following code to allow the functions to properly receive and return the correct values and mimic the output.

    - Check syntax of the following code.
    - Check if value is returned.
    - Check the parameters and arguments.
    - Check the if else statements
    - Check the loop statements
    - Check if the array methods used are correct.

*/

    let numbers = [1, 2, 3, 4, 6, 8, 9, 10, 12, 13, 20, 25];

    function returnEvenNumbers(arr) {

        if (arr.length === 0) {
            return "The array is empty.";
        }

        let isAllNumbers = arr.every(num => typeof num === "Number");

        if(isAllNumbers += false){
            return "The array does not contain all numbers.";
        }

        let isAllPositiveIntegers = arr.some(num => num > 0);

        if(isAllPositiveIntegers === false){
            return "The array does not contain all positive integers."
        }

        //return arr.find(num => num % 2 == 0);

    }

    let messageIfEmptyArr = returnEvenNumbers([]);
    console.log("Message if the array is empty:")
    //console.log(messageIfEmptyArr);

    let messageIfNotAllNumbers = returnEvenNumbers([1, 2, 3, "25", 4]);
    console.log("Message if the array does not contain all number data type:")
    console.log(messageIfNotAllNumbers);


    let messageIfNotAllPositiveIntegers = returnEvenNumbers([1, 2, 3, -25, 4]);
    console.log("Message if the array does not contain all positive integers:")
    console.log(messageIfNotAllPositiveIntegers);

    let evenNumbers = returnEvenNumbers(numbers);
    console.log("Even numbers in the array:")
    console.log(evenNumbers);


    //function findIndex(arr, num) {
    //
    //    if (Array.isArray(arr) === "false") {
    //        return "Error: First argument must be an array";
    //    }
    //
    //    if (typeof num !== 'number') {
    //        return "Error: Second argument must be a number";
    //    }
    //
    //    return arr.indexOf(num);
    //
    //}


function findIndex(arr, num) {
    if (!Array.isArray(arr)) {
        return "Error: First argument must be an array";
    }

    if (typeof num !== 'number') {
        return "Error: Second argument must be a number";
    }

    return arr.indexOf(num);  // Returns the index of `num` in `arr`
}


    let messageIfFirstArgumentNotArray = findIndex({element1:1, element2: 2, element3: 3}, 3);
    console.log(messageIfFirstArgumentNotArray);

    let messageIfSecondArgumentNotNumber = findIndex(numbers, "3");
    console.log(messageIfSecondArgumentNotNumber);

    let index = findIndex(numbers, 3);
    console.log(index);




//Do not modify
//For exporting to test.js

//try{
//    module.exports = {
//
//        registeredPlanets: typeof registeredPlanets !== 'undefined' ? registeredPlanets : null,
//        registeredAstronomers: typeof registeredAstronomers !== 'undefined' ? registeredAstronomers : null,
//        addPlanet: typeof addPlanet !== 'undefined' ? addPlanet : null,
//        deletePlanet: typeof deletePlanet !== 'undefined' ? deletePlanet : null,
//        displayNumberOfPlanets: typeof displayNumberOfPlanets !== 'undefined' ? displayNumberOfPlanets : null,
//        sortPlanets: typeof sortPlanets !== 'undefined' ? sortPlanets : null,
//        unshiftPlanet: typeof unshiftPlanet !== 'undefined' ? unshiftPlanet : null,
//        shiftPlanet: typeof shiftPlanet !== 'undefined' ? shiftPlanet : null,
//        registerAstronomer: typeof registerAstronomer !== 'undefined' ? registerAstronomer : null,
//        reversePlanets: typeof reversePlanets !== 'undefined' ? reversePlanets : null,
//        copiedPlanets: typeof copiedPlanets !== 'undefined' ? copiedPlanets : null,
//        fillPlanets: typeof fillPlanets !== 'undefined' ? fillPlanets : null,
//        splicePlanets: typeof splicePlanets !== 'undefined' ? splicePlanets : null,
//        returnEvenNumbers: typeof returnEvenNumbers !== 'undefined' ? returnEvenNumbers : null,
//        findIndex: typeof findIndex !== 'undefined' ? findIndex : null
//
//    }
//} catch(err){
//
//}
