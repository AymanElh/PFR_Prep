import {employees} from '../dataset.js';
// get the first name of the first employee

function getFirstEmployeeFirstName() {
    return employees[0].firstName;
}

console.log(getFirstEmployeeFirstName());