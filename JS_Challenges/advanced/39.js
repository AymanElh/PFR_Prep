import { employees } from "../dataset.js";
import { toArray } from "../helpers.js";
import { toString } from "../helpers.js";

function removeVowels(str) {
    let arr = toArray(str);
    for(let i = 0; i < arr.length; i++) {
        if(arr[i] === 'a' || arr[i] === 'e' || arr[i] === 'i' || arr[i] === 'u') {
            arr[i] = "*";
        }
    }
    return toString(arr);
}

function replaceVowelsInNames(arr) {
    for(let i = 0; i < arr.length; i++) {
        arr[i].firstName = removeVowels(arr[i].firstName);
        arr[i].lastName = removeVowels(arr[i].lastName);
    }
}

replaceVowelsInNames(employees);
console.log(employees)