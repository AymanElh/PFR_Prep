import { employees } from "../dataset.js";

function getAllEmployeesEmails(arr) {
    let emails = "";
    for(let i = 0; i < arr.length; i++) {
        emails += arr[i].firstName + "." + arr[i].lastName + "@company.com;"
    }
    return emails;
}

console.log(getAllEmployeesEmails(employees));