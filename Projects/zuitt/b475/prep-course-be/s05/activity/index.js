/*
    1. Create a function called "provideAccess" which is able to receive 2 parameters called username and role.
        - Create a global variable "message" with the value "No message.".
        - Add an if statement to check if the the username is an empty string or undefined or if the role is an empty string or undefined.
            - If it is, return a message in console to inform the user that their input should not be empty.
        - Add a else" statement which will contain another "if, else if and else" statement. Add a condition to check the user's role adding 3 conditions for "admin", "manager" & "agent" and an "else" statement:
                - If the user's role is admin, return the following message:
                    "Welcome admin, <username>. You now have access to all features."
                - If the user's role is manager,return the following message:
                    "Welcome manager, <username>. You now have limited access for account management."
                - If the user's role is a agent,return the following message:
                    "Welcome agent, <username>. You now have sufficient access to assist clients."
                - If the user's role does not fall under any of the cases, as a default, return a message:
                    "Welcome user, <username>. Enjoy our app and contact us for questions."
        - Invoke the "provideAccess" function, re-assign the value of the global variable "message" to the result of the "provideAccess" function and log in the console the result.
*/

let message = 'No message';

function provideAccess(username, role) {
  if ((username == '' || username == undefined) || (role == '' || role == undefined)) {
    return 'Input should not be empty.';
  }
  else {
    if (role == 'admin') {
      return `Welcome admin, ${username}. You now have access to all features.`;
    }
    else if (role == 'manager') {
      return `Welcome manager, ${username}. You now have limited access for account management.`;
    }
    else if (role == 'agent') {
      return `Welcome agent, ${username}. You now have sufficient access to assist clients.`;
    }
    else
      return `Welcome ${username}. Enjoy our app and contact us for questions.`
  }
}

message = provideAccess('Bryan', 'agent');
console.log(message);




/*
    2. Create a function called "earthquakeAlert" which is able to receive 4 decimal numbers as arguments calculate its average and log a message to alert the user of the appropriate warning message..
        - Add parameters appropriate to describe the arguments.
        - Create a new function scoped variable called "averageIntensity".
        - Calculate the average of the 4 number inputs and store it in the "averageIntensity" variable.
        - Add an if statement to check if the value of average is less than or equal to 3.9.
            - If it is, return the following message:
            "The magnitude level is: <averageIntensity>. Light earthquake detected."
        - Add an else if statement to check if the value of average is greater than or equal to 4.0 and if average is less than or equal to 5.9.
            - If it is, return the following message:
            "The magnitude level is: <averageIntensity>. Moderate earthquake detected. Check for damages and structure stability."
        - Add an else if statement to check if the value of average is greater than or equal to 6.0 and if average is less than or equal to 6.9.
            - If it is, return the following message:
            "The magnitude level is: <averageIntensity>. Strong earthquake detected. Please evacuate and follow emergency procedures."
        - Add an else statement.
            - Return the following message:
            "The magnitude level is: <averageIntensity>. Great earthquake detected. Please be aware of falling debris and imminent danger."
        - Invoke the "earthquakeAlert" function, re-assign the value of the global variable "message" to the result of the "earthquakeAlert" function and log in the console the result.
*/
let message2 = 'No message';
function earthquakeAlert(num1, num2, num3, num4) {
  let averageIntensity = (num1 + num2 + num3 + num4) / 4;
  if (averageIntensity <= 3.9) {
    return "The magnitude level is: " + averageIntensity + ". Light earthquake detected."
  }
  else if (averageIntensity >= 4.0 && averageIntensity <= 5.9) {
    return "The magnitude level is: " + averageIntensity + ". Moderate earthquake detected. Check for damages and structure stability."
  }
  else if (averageIntensity >= 6.0 && averageIntensity <= 6.9) {
    return "The magnitude level is: " + averageIntensity + ". Grat earthquake detected. Please be aware of falling debris and imminent danger."
  }
}

message2 = earthquakeAlert(3.5, 4.2, 5.0, 6.3);
console.log(message2);




