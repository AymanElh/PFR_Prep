import {employees} from '../dataset.js';
import { sort } from '../helpers.js';

function calculateMedianSalary(arr) {
    let salaries = [];
    for(let i = 0; i < arr.length; i++) {
        salaries.push(arr[i].salary);
    }
    sort(salaries);
    const len = salaries.length;
    const mid = Math.floor(salaries.length / 2)
    console.log(salaries);
    return len % 2 === 1 ? salaries[mid ] :  (salaries[mid] + salaries[mid + 1]) / 2;
}

console.log(calculateMedianSalary(employees));