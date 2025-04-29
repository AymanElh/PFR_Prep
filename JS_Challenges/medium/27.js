import {employees} from '../dataset.js';
import { getUniqueProjectNames } from './26.js';

function getCountOfEmployeesByProject(arr, name) {
    let count = 0;
    for(let i = 0; i < arr.length; i++) {
        if(arr[i].projects.includes(name)) {
            count++;
        }
    }
    return count;
}

export function countEmployeesByProject(projectNames, employees) {
    let employeesByProject = {};
    for(let i = 0; i < projectNames.length; i++) {
        employeesByProject[projectNames[i]] = getCountOfEmployeesByProject(employees, projectNames[i]);
    }
    return employeesByProject;
}

// console.log(countEmployeesByProject(getUniqueProjectNames(employees), employees))