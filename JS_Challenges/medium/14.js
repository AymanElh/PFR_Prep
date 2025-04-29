import {employees} from '../dataset.js';

function getEmployeesByLastNameInitial(arr, firstLetter) {
    let employeesWithL = [];
    for(let i = 0; i < arr.length; i++) {
        if((arr[i].lastName.toLowerCase())[0] === firstLetter.toLowerCase()) {
            employeesWithL.push(arr[i]);
        }
    }
    return employeesWithL;
}

console.log(getEmployeesByLastNameInitial(employees, 'L'))