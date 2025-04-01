/*
1. In the S03 folder, create an activity folder, an index.html file inside of it and link the index.js file.
2. Create an index.js file and console log the message Hello World to ensure that the script file is properly associated with the html file.
3. Copy the activity code from your Instructor. Paste the activity code to your index.js file.
*/

console.log("Hello World");


/*
  4. Create a function named getClientInfo which is able to return an object. 

    The object returned should have the following properties:
  	
    - name - String
    - address - String
    - deliverySchedule - String
    - paymentMethod - String

    Note: Property names given is required and should not be changed.

    To check, create a variable to save the value returned by the function.
    Then log the variable in the console.

    You can also invoke the function in the console to view the returned value of the function.

    Note: This is optional.

*/

function getClientInfo() {
  let details = {
    name: 'Bryan',
    address: 'Cebu, Philippines',
    deliverySchedule: '1pm - 5pm',
    paymentMethod: 'Cash'
  }
  return details;
}
console.log(getClientInfo());
console.log(typeof getClientInfo());









/*
  5. Create a function named getCountriesArray which is able to return an array with at least 5 names of countries.
  	
    - Note: the array returned should have at least 5 elements as strings.
          function name given is required and cannot be changed.


    To check, create a variable to save the value returned by the function.
    Then log the variable in the console.

    You can also invoke the function in the console to view the returned value of the function.

      Note: This part is optional.
	
*/
function getCountriesArray() {
  let countries = ["United Kingdom", "Italy", "France", "Greece", "Egypt"];
  return countries;
};
console.log(getCountriesArray());
console.log(typeof getCountriesArray());




/*
  6. Create a function named getSongsArray which is able to return an array with at least 5 capital cities of different countries.

    - Note: the array returned should have at least 5 elements as strings.
            function name given is required and cannot be changed.

    To check, create a variable to save the value returned by the function.
    Then log the variable in the console.

    You can also invoke the function in the console to view the returned value of the function.

      Note: This part is optional.
*/

function getSongsArray() {
  let capitalCities = ['Paris', 'London', 'Madrid', 'Rome', 'Berlin'];
  return capitalCities;
}

console.log(getSongsArray());
console.log(typeof getSongsArray());

/*
  7. Create a function named getIndustriesArray which is able to return an array with at least 5 major industries of your countries.

    - Note: the array returned should have at least 5 elements as strings.
            function name given is required and cannot be changed.

    To check, create a variable to save the value returned by the function.
    Then log the variable in the console.

    You can also invoke the function in the console to view the returned value of the function.

    Note: This part is optional.
*/

function getIndustriesArray() {
  let industries = ['Machinery', 'Mining', 'Agriculture', 'Electronics', 'Clothing'
  ];
  return industries;
}
console.log(getIndustriesArray());

/*
  8. Explore and understand the concept of scope in JavaScript through a series of coding challenges. Use your knowledge of scope to correctly declare and access variables within different scopes.
        - Declare a global variable named dollarExchangeRate and assign it to the number value of 54.
        - Write a function named computeExchangeAmount that returns the value of 5 times the value of the "dollarExchangeRate" variable.
        - Invoke the "computeExchangeAmount" function to get the total amount and store it in the a variable named "totalAmount" and log it in the console.
*/

let dollarExchangeRate = 54;
let totalAmount = computeExchangeAmount();
function computeExchangeAmount() {
  return dollarExchangeRate * 5;
}
console.log(totalAmount);





/*
  9. Explore and understand the concept of scope in JavaScript through a series of coding challenges. Use your knowledge of scope to correctly declare and access variables within different scopes.
      - Inside the same script, define a function named "printJobDetails".
        - Declare a local variable named "jobListing" inside "printJobDetails", assign it with a string "Accountant" and a local variable named "jobDescription", assign it with a string "Responsible for bookkeeping and delivering financial reports.".
        - Attempt to return the value of "jobListing" and "jobDescription" to return a single line of text "Accountant: Responsible for bookkeeping and delivering financial reports.".
        - Try to access the values of "jobListing" and "jobDescription" variables outside the printJobDetails function. Make a note of the result. Remember to uncomment this line after attempting to access.
*/

function printJobDetails() {
  let jobListing = 'Accountant';
  let jobDescription = 'Responsible for bookkeeping and delivering financial reports.'
  return jobListing + ': ' + jobDescription;
}

console.log(printJobDetails());
// console.log(jobListing);
// console.log(jobDescription);

// result: returns an error because the variables are declared locally inside the function and can't be accessed outsied









/*
  10. Explore and understand the concept of scope in JavaScript. Use your knowledge of scope to correctly declare and access variables within different scopes.
        - Create a function named "printCompanyProfile".
        - Inside the function, declare a variable named "companyName", assign it with a string "Microsoft" and declare a variable named "companyType", assign it with a string "Corporation".
        - Return the value of "printCompanyProfile" within the function, "Company Name: Microsoft Company Type: Corporation".
        - Uncomment the code that attempts to access "companyName" and "companyType" outside of the function.
*/

function printCompanyProfile() {
  let companyName = "Microsoft";
  let companyType = 'Corporation';
  return 'Company name: ' + companyName + ' Company Type: ' + companyType;
}

console.log(printCompanyProfile());











/*
11. Add your changes.
12. Commit your changes with a concise, imperative statement describing the change. Example: "Added solution for the s03 activity".
13. Add the link in Boodle for s03.
*/
