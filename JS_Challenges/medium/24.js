import { employees } from "../dataset.js";

function isExist(arr, key) {
    for(let i = 0; i < arr.length; i++) {
        if(arr[i] === key) {
            return true;
        }
    }
    return false;
}

function getPositionsInDepartment(arr, dep) {
    let positions = [];
    for(let i = 0; i < arr.length; i++) {
        if(arr[i].department === dep) {
            if(!isExist(positions, arr[i].position)) positions.push(arr[i].position);
        }
    }
    return positions;
}

console.log(getPositionsInDepartment(employees, "Development"))