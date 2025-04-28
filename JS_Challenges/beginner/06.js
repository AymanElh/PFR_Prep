import {employees} from '../dataset.js';

function averageAgeofAllEmployees() {
    let sum = 0;
    for(let i = 0; i < employees.length; i++) {
        sum += employees[i].age;
    }
    return sum / employees.length;
}

console.log(averageAgeofAllEmployees());