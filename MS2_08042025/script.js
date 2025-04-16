let str = "aaaabbbcb";
let newStr = "";

function count(arr, element) {
  let count = 0;
  for(let i = 0; i < arr.length; i++) {
    if(arr[i] == element) {
      count++;
    }
  }
  return count;
}

function isExist(arr, element) {
  for(let i = 0; i < arr.length; i++) {
    if(arr[i] == element) return true;
  }
  return false;
}


function nbrOfEachItem(arr) {
  for(let i = 0; i < arr.length; i++) {
    if(!isExist(newStr, arr[i])) {
      newStr += arr[i];
      newStr += count(arr, arr[i]); 
    }
  }
  return newStr;
}

console.log(nbrOfEachItem(str));