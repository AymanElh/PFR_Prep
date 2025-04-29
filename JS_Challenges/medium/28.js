import { employees } from "../dataset.js";
import { getUniqueProjectNames } from "./26.js";
import { countEmployeesByProject } from "./27.js";

function getSoloProjects(employees) {
    const projectCounts = countEmployeesByProject(getUniqueProjectNames(employees), employees);
    const soloProjects = [];

    for (let project in projectCounts) {
        if (projectCounts[project] === 1) {
            soloProjects.push(project);
        }
    }

    return soloProjects;
}

console.log(getSoloProjects(employees));