import {employees} from '../dataset.js';

function hasEmployeeWithoutProjects(arr) {
    for(let i = 0; i < arr.length; i++) {
        if(arr[i].projects.length < 1) {
            return true;
        }
    }
    return false;
}

console.log(hasEmployeeWithoutProjects(employees))