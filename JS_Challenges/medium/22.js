import { employees } from "../dataset.js";
import { countEmployeesByDep } from "./21.js";



function getLargestDep(arr) {
    let depCount = countEmployeesByDep(arr);
    let maxEmployees = 0;
    let department = null;
    for(let dep in depCount) {
        if(depCount[dep] > maxEmployees) {
            maxEmployees = depCount[dep];
            department = dep;
        }
    }
    return department;
}

console.log(getLargestDep(employees));