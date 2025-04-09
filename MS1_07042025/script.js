// Ex

/**
 * Input: [1, 2, 4, 7]
 * Output: [3, 5, 6]
 */


// function to find the min of the array
function findMin(arr) {
    let min = arr[0];
    for(let i = 0; i < arr.length; i++) {
        if(min > arr[i]) { min = arr[i] }
    }
    return min;
}


// function to find the max of the array 
function findMax(arr) {
    let max = arr[0];
    for(let i = 0; i < arr.length; i++) {
        if(max < arr[i]) {
            max = arr[i]
        }
    }
    return max;
}

// function to check if an element exist on the array
/**
 * @param array []
 * @param integer
 * @return bool
 */
function isExist(arr, nbr) {
    for(let i = 0; i < arr.length; i++) {
        if(arr[i] === nbr) return 1;
    }
    return 0;
}


function missedNumbers(arr) {
    let min = findMin(arr);
    let max = findMax(arr);
    let result = [];
    for(let i = min; i < max; i++) {
        if(isExist(arr, i)) {
            continue;
        } else {
            result.push(i);
        }
    }
    return result;
}

let arr = [1, 2, 4, 7];
console.log(missedNumbers(arr));