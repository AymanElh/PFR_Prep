let arr = [0, [1, [2, [3, 4]]], 4, 5, 6, [38, 9, 0]]
// console.log(typeof(arr) == "object");]
let newArr = [];
function getArrayElements(arr) {
    // let newArr = [];
    for(let i = 0; i < arr.length; i++) {
        if(isNaN(arr[i])) { 
            getArrayElements(arr[i]);
        } else {
            newArr.push(arr[i]);
        }
    }
    // return newArr;/
}

getArrayElements(arr);
console.log(newArr)
// let newArr = [];
// for(let i = 0; i < arr.length; i++) {
//     let value = arr[i];
//     if(!isNaN(value)) {
//         newArr.push(value);
//     } else {
//         while(isNaN(value)) {
//             for(let j = 0; j < value.length; j++) {
//                 if(!isNaN(value[j])) {
//                     newArr.push(value[j]);
//                     console.log(newArr);
//                     continue
//                 } else {
//                     value = value[j];
//                     break;
//                 }
//             }
//         }
//     }
// }

// console.log(newArr);
// 