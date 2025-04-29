import { employees } from "../dataset.js";


function getEmployeesWithMoreThanTwoSkills(arr) {
    let newArr = [];
    for(let i = 0; i < arr.length; i++) {
        if(arr[i].skills.length > 1) {
            newArr.push(arr[i]);
        }
    }
    return newArr
}

console.log(getEmployeesWithMoreThanTwoSkills(employees));