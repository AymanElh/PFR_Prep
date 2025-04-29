import {employees} from '../dataset.js';

function getHighEarningEmployees(arr) {
    let highEncomeEmployees = [];
    for(let i = 0; i < arr.length; i++) {
        if(arr[i].salary >= 60000) {
            highEncomeEmployees.push(arr[i]);
        }
    }
    return highEncomeEmployees;
}

console.log(getHighEarningEmployees(employees));