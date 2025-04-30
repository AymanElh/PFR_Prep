import { employees } from "../dataset.js";
import { includes } from "../helpers.js";

// My solution
function getProjectEmployees(arr, project) {
    let employees = [];
    for(let i = 0; i < arr.length; i++) {
        if(includes(arr[i].projects, project)) {
            employees.push(arr[i]);
        }
    }
    return employees;
}

function getDepartmentProjects(arr, dep) {
    let projects = {};
    for(let i = 0; i < arr.length; i++) {
        if(arr[i].department === dep) {
            for(let j = 0; j < arr[i].projects.length;j++) {
                projects[arr[i].projects[j]] = getProjectEmployees(arr, arr[i].projects[j]);
            }
        }
    }
    return projects;
}

function getDepartmentProjectEmployeeStructure(arr) {
    let obj = {};
    for(let i = 0; i < arr.length; i++) {
        obj[arr[i].department] = getDepartmentProjects(arr, arr[i].department);
    }
    return obj;
}


// Opitmized solution
function getDepartmentProjectEmployeeStruct(arr) {
    const result = {};
    for(const emp of employees) {
        const {department, projects} = emp;
        if(!result[department]) {
            result[department] = {};
        }

        for(const project of projects) {
            if(!result[department][project]) {
                result[department][project] = [];
            }
            result[department][project].push(emp);
            console.log(result);
            // break;
        }
        if(emp.id === 3) {
            break;
        }
    }
    return result;
}

console.dir(getDepartmentProjectEmployeeStruct(employees), { depth: null });
