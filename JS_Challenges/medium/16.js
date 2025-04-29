import {employees} from '../dataset.js';

function getEmployeesJoinedAfterYear(arr, year) {
    let employeesAfterDate = [];
    for(let i = 0; i < arr.length; i++) {
        if(new Date(arr[i].joinDate) >= new Date(`${year}-01-01`)) {
            employeesAfterDate.push(arr[i]);
        }
    }
    return employeesAfterDate;
}

console.log(getEmployeesJoinedAfterYear(employees, '2020'));