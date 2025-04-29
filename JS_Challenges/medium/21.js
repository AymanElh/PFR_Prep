import {employees} from '../dataset.js';


export function countEmployeesByDep(arr) {
    let employeesBydep = {};
    for(let i = 0; i < arr.length; i++) {
        employeesBydep[arr[i].department] = (employeesBydep[arr[i].department] || 0) + 1;
    }
    return employeesBydep;
}

// console.log(countEmployeesByDep(employees))