import { employees } from "../dataset.js";
import { includes } from "../helpers.js";
import {getUniqueProjectNames} from '../medium/26.js'

function getEmployeesWithProject(arr, project) {
    let employeesOnThisProject = [];
    for(let i = 0; i < arr.length; i++) {
        if(includes(arr[i].projects, project)) {
            employeesOnThisProject.push(arr[i]);
        }
    }
    return employeesOnThisProject;
}

function getProjectEmployeeDictionary(arr, projects) {
    let projectsWithEmployees = [];
    for(let i = 0; i < projects.length; i++) {
        projectsWithEmployees[projects[i]] = getEmployeesWithProject(arr, projects[i]);
    }
    return projectsWithEmployees
}

console.log(getProjectEmployeeDictionary(employees, getUniqueProjectNames(employees)))