import { employees } from "../dataset.js";

function calculateSalaryPrecentiles(arr) {
    let salaries = [];
    for(let i = 0; i < arr.length; i++) {
        salaries.push(arr[i].salary);
    }
    return salaries;
}

console.log(calculateSalaryPrecentiles(employees));