import { employees } from "../dataset.js";
import { getUniqueProjectNames } from "./26.js";
import { countEmployeesByProject } from "./27.js";

function getMostPopularProject(arr) {
    let projects = countEmployeesByProject(getUniqueProjectNames(arr), arr);
    let max = 0;
    let projectName = "";
    for(let project in projects) {
        if(projects[project] > max) {
            max = projects[project];
            projectName = project;
        }
    }
    return projectName;
}

console.log(getMostPopularProject(employees));