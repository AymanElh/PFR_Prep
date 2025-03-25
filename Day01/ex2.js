let arr1 = [1, 2, 3, 4, 5];
let arr2 = [6, 7, 8, 9, 0, 12];




function sumOfArraysByIndex(arr1 = [], arr2 = [])
{
    let sumArr = [];
    const len = arr1.length > arr2.length ? arr1.length : arr2.length;
    console.log(len);
    for(let i = 0; i < len; i++) {
        sumArr[i] = (arr1[i] || 0) + (arr2[i] || 0)
    }
    return sumArr;
}

console.log(sumOfArraysByIndex(arr1, arr2))