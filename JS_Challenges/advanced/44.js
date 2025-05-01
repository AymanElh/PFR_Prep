import { employees } from "../dataset.js";

function calculateAgeSalaryCorelation(arr) {
    let ages = [];
    let salaries = [];
    for(let i = 0; i < arr.length; i ++) {
        ages.push(arr[i].age);
        salaries.push(arr[i].salary);
    }

    console.log("Ages: ", ages);
    console.log("Salaries: ", salaries);
}

calculateAgeSalaryCorelation(employees);