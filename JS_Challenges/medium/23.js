import { employees } from "../dataset.js";

function caculateSumSalriesByDep(arr, dep) {
    let sum = 0;
    for(let i = 0; i < arr.length; i++) {
        if(arr[i].department === dep) {
            sum += arr[i].salary;
        }
    }
    return sum;
}

function caculateTotalSalaryByDep(arr) {
    let totalSalaries = {};
    for(let i= 0; i < arr.length; i++) {
        totalSalaries[arr[i].department]  = caculateSumSalriesByDep(arr, arr[i].department);
    }
    return totalSalaries;
}

console.log(caculateTotalSalaryByDep(employees));