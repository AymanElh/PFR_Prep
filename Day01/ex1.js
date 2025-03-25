let strings = ["apple", "orange", "pineapple", "banana"];

// without builtin function
let maxStr = strings[0];
for(let i = 0; i < strings.length; i++) {
    if(maxStr.length < strings[i].length) {
        maxStr = strings[i];
    }
}

console.log("The largest word on the array is: ", maxStr);


// with builtin function
strings.sort();
console.log("The largest word is : ", strings[strings.length]);