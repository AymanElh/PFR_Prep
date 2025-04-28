import {employees} from '../dataset.js';

function getEmployeeDepartmentById(userId) {
    for(let i = 0; i < employees.length; i++) {
        if(employees[i].id === userId) {
            return employees[i].department;
        }
    }
    return null;
}

console.log(getEmployeeDepartmentById(5));