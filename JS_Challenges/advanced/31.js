import { employees } from "../dataset.js";

function getFullNames(arr) {
    let fullNames = [];
    for(let i = 0; i < arr.length; i++) {
        fullNames.push(arr[i].firstName + " " + arr[i].lastName);
    }
    return fullNames;
}

console.log(getFullNames(employees));