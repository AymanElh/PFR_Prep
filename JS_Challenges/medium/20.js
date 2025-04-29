import {employees} from '../dataset.js';

function getLongestServingEmployee(arr) {
    let moreWorkedEmployee = arr[0];
    for(let i = 1; i < arr.length; i++) {
        if(new Date(moreWorkedEmployee.joinDate) > new Date(arr[i].joinDate)) {
            moreWorkedEmployee = arr[i];
        }
    }
    return moreWorkedEmployee;
}

console.log(getLongestServingEmployee(employees))