let arr = [2, 3, 4, 2, 3, 5, 6];

function count(arr, element) {
    let count = 0;
    for(let i = 0; i < arr.length; i++) {
        if(arr[i] === element) {
            count++;
        }
    }
    return count;
}

function isExist(arr, element) {
    for(let i = 0; i < arr.length; i++) {
        if(arr[i] === element) return 1;
    }
    return 0;
}

function checkRepeatedEelemnts(arr) {
    let uniqueElements = []
    let repeatedEelements = [];
    for(let i = 0; i < arr.length; i++) {
        if(count(arr, arr[i]) > 1) {
            if(!isExist(repeatedEelements, arr[i])) {
                repeatedEelements.push(arr[i]);
            }
        } else {
            uniqueElements.push(arr[i]);
        }
    }
    return [repeatedEelements, uniqueElements];
}


let [arr1, arr2] = checkRepeatedEelemnts(arr);
console.log(arr1, arr2);