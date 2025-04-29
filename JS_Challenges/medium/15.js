import {employees} from '../dataset.js';

function getDepAverage(arr, dep) {
    let sum = 0;
    let count = 0;
    for(let i = 0; i < arr.length; i++) {
        if(arr[i].department === dep) {
            sum += arr[i].salary;
            count++;
        }
    }
    return sum / count;
}

function calculateAverageSalaryByDep(arr) {
    let avgByDep = {};
    for(let i = 0; i < arr.length; i++) {
        avgByDep[arr[i].department] = getDepAverage(arr, arr[i].department);
    }
    return avgByDep;
}

console.log(calculateAverageSalaryByDep(employees))