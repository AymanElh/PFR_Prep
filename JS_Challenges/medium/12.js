import {employees} from "../dataset.js";

function getEmployeesByProject(arr, projectName) {
    let employeesByProject = [];
    for(let i = 0; i < arr.length; i++) {
        if(arr[i].projects.includes(projectName)) {
            employeesByProject.push(arr[i]);
        }
    }
    return employeesByProject;
}

console.log(getEmployeesByProject(employees, "Project Gamma"));