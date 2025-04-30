import { employees } from "../dataset.js";
import { capitalizeLetter } from "../helpers.js";

function getNamesWithFistLetter(arr, firstLetter) {
    let namesWithSameFirstLetter = [];
    for(let i = 0;i < arr.length; i++) {
        if(capitalizeLetter(arr[i].lastName[0]) === firstLetter) {
            namesWithSameFirstLetter.push(arr[i])
        }
    }
    return namesWithSameFirstLetter;
}

function groupEmployeesByLastNameInitial(arr) {
    let groupByLastNameInitial = {};
    for(let i = 0; i < arr.length; i++) {
        var char = capitalizeLetter(arr[i].lastName[0]);
        groupByLastNameInitial[char] = getNamesWithFistLetter(arr, char);
    }
    return groupByLastNameInitial;
}

console.log(groupEmployeesByLastNameInitial(employees));