import {employees} from '../dataset.js';

function isExist (arr, name) {
    for(let i = 0; i < arr.length; i++) {
        if(arr[i] === name) {
            return true;
        }
    }
    return false;
}

export function getUniqueProjectNames(arr) {
    let uniqueProject = [];
    for(let i = 0; i < arr.length; i++) {
        let projects = arr[i].projects;
        for(let j = 0; j < projects.length; j++) {
            if(!isExist(uniqueProject, projects[j])) {
                uniqueProject.push(projects[j])
            }
        }
    }
    return uniqueProject;
}

// console.log(getUniqueProjectNames(employees))