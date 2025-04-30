import {employees} from '../dataset.js';

// function getSkillCount(arr, skill) {
//     let skillCount = 0;
//     for(let i = 0; i < arr.length; i++) {
//         if(arr[i].skills.includes(skill)) {
//             skillCount++;
//         }
//     }
//     return skillCount;
// }

function getSkillsCountObj(arr) {
    let skillsCount = {};
    for(let i = 0; i < arr.length; i++) {
        for(let skill of arr[i].skills) {
            skillsCount[skill] = (skillsCount[skill] || 0) + 1;
        }
    }
    return skillsCount;
}

function getMostCommonSkill(arr) {
    let skills = getSkillsCountObj(arr);
    let maxCount = 0;
    let mostSkill = null;
    for(let skill in skills) {
        if(skills[skill] > maxCount) {
            maxCount = skills[skill];
            mostSkill = skill;
        }
    }
    return mostSkill;
}


console.log(getMostCommonSkill(employees));