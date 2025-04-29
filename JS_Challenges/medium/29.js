import { employees } from "../dataset.js";

function getEmployeesWithMultipleProjects(arr) {
    let emp = [];
    for(let i = 0; i < arr.length; i++) {
        if(arr[i].projects.length > 1) {
            emp.push(arr[i]);
        }
    }
    return emp;
}

console.log(getEmployeesWithMultipleProjects(employees));