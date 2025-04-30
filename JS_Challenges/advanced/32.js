import { employees } from "../dataset.js";
import { toString, toArray, toLowerCase, capitalizeLetter, minimizeLetter } from "../helpers.js";


function normalizeNames(arr) {
    let names = [];
    for(let i = 0; i < arr.length; i++) {
        let name = toArray(toLowerCase(arr[i].firstName));
        name[0] = capitalizeLetter(name[0]);
        name = toString(name);
        names.push(name);
    }
    return names;
}

console.log(normalizeNames(employees));
