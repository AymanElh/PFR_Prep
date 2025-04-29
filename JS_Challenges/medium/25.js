import { employees } from "../dataset.js";

function getAvgOfDep(arr, dep) {
    let totalProjectsByDep = 0;
    let count = 0;
    for(let i = 0; i < arr.length; i++) {
        if(arr[i].department === dep) {
            totalProjectsByDep += arr[i].projects.length;
            count++;
        }
    }
    return totalProjectsByDep / count;
}

function caculateAverageProjectsByDepartment(arr) {
    let avg = {};
    for(let i = 0; i < arr.length; i++) {
        avg[arr[i].department] = getAvgOfDep(arr, arr[i].department)
    }
    return avg;
}

console.log(caculateAverageProjectsByDepartment(employees));