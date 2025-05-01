import { employees } from "../dataset.js";
import { square } from "../helpers.js";

function getAvg(arr) {
    let sum = 0;
    for(let i = 0; i < arr.length; i++) {
        sum += arr[i].age;
    }
    return sum / arr.length;
}

function calculateAgeStandardDeviation(arr) {
    let u = getAvg(arr);
    let variance = 0;
    let N = arr.length;
    for(let i = 0; i < arr.length; i++) {
        variance += square((arr[i].age - u));
    }   
    variance = (1/N) * variance;
    return Math.sqrt(variance);
}

console.log(calculateAgeStandardDeviation(employees));