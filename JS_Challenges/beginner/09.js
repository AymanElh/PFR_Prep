import { employees } from "../dataset.js";

function isExist(departments, name) {
    for(let i = 0; i < departments.length; i++) {
        if(departments[i] === name) {
            return true;
        }
    }
    return false;
}

function getUniqueDepartments(employees) {
    let departments = [];
    for(let i = 0; i < employees.length; i++) {
        if(!isExist(departments, employees[i].department)) {
            departments.push(employees[i].department);
        }
    }
    return departments;
}

console.log(getUniqueDepartments(employees));