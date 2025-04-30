import { employees } from "../dataset.js";

function yearsOfSercice(arr) {
    for(let i = 0; i < arr.length; i++) {
        let now = new Date();
        let date = new Date(arr[i].joinDate);
        arr[i].yearsOfSercice = now.getFullYear() - date.getFullYear();
    }
}
yearsOfSercice(employees);
console.log(employees);