import { employees } from "../dataset.js";

function countEnglishSpeakingEmployees(arr) {
    let enSpeakers = 0;
    for(let i = 0; i < arr.length; i++) {
        if(arr[i].languages.includes("English")) {
            enSpeakers++;
        }
    }
    return enSpeakers;
}

console.log(countEnglishSpeakingEmployees(employees));