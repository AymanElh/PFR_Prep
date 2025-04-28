import { employees } from '../dataset.js';

function getLastEmployeeLastName() {
    return employees[employees.length - 1].lastName;
}

console.log(getLastEmployeeLastName());