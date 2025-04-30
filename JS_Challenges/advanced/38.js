import { employees } from "../dataset.js";
import { reverse } from "../helpers.js";

function reverseEmployeeNames(arr) {
    for(let i = 0; i < arr.length; i++) {
        arr[i].firstName = reverse(arr[i].firstName);
        arr[i].lastName = reverse(arr[i].lastName);
    }
}

reverseEmployeeNames(employees);
console.log(employees);