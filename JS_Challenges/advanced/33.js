import { employees } from "../dataset.js";
import { capitalizeLetter } from "../helpers.js";

function getEmployeesInitials(arr) {
    let initials = [];
    for(let i = 0; i < arr.length; i++) {
        initials.push(capitalizeLetter((arr[i].firstName)[0]) + capitalizeLetter((arr[i].lastName)[0]));
    }
    return initials;
}

console.log(getEmployeesInitials(employees));