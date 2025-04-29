import {employees} from '../dataset.js';

function getMultiLanguageEmployees(arr) {
    let multiLanguageEmployees = [];
    for(let i = 0; i < arr.length; i++) {
        if(arr[i].languages.length > 1) {
            multiLanguageEmployees.push(arr[i]);
        }
    }
    return multiLanguageEmployees;
}

console.log(getMultiLanguageEmployees(employees));