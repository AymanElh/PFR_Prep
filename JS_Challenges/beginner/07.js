import {employees} from '../dataset.js';

function getHighestSalaryEmployee() {
    let highestEmployeeSalary = employees[0];
    for(let i = 0; i < employees.length; i++) {
        if(highestEmployeeSalary.salary < employees[i].salary) {
            highestEmployeeSalary = employees[i];
        }
    }
    return highestEmployeeSalary;
}

console.log(getHighestSalaryEmployee());