import { employees } from "../dataset.js";


function hasInactiveEmployees() {
    for(let i = 0; i < employees.length; i++) {
        if(!employees[i].isActive) {
            return true;
        }
    }
    return false;
}

console.log(hasInactiveEmployees())