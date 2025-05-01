export function toString(arr) {
    let str = "";
    for(let i = 0; i < arr.length; i++) {
        str += arr[i];
    }
    return str;
}

export function toArray(str) {
    let arr = [];
    for(let i = 0; i < str.length; i++) {
        arr.push(str[i]);
    }
    return arr;
}

export function capitalizeLetter(c) {
    const charCode = c.charCodeAt(0);
    if(charCode > 97 && charCode < 122) return String.fromCharCode(charCode - 32);
    return c;
}

export function minimizeLetter(c) {
    const charCode = c.charCodeAt(0);
    if(charCode > 65 && charCode < 90) return String.fromCharCode(charCode + 32);
    return c;
}

export function toLowerCase(string) {
    let arr = toArray(string);
    for(let i = 0; i < arr.length; i++) {
        arr[i] = minimizeLetter(arr[i]);
    }
    return toString(arr);
}

export function includes(arr, element) {
    for(let i = 0; i < arr.length; i++) {
        if(arr[i] === element) {
            return true;
        }
    }
    return false;
}


export function reverse(str) {
    let newStr = "";
    for(let i = str.length - 1; i >= 0; i--) {
        newStr += str[i];
    }
    return newStr;
}

export function sort(arr) {
    let temp;
    for(let i = 0; i < arr.length; i++) {
        for(let j = i+1; j < arr.length; j++) {
            if(arr[i] > arr[j]) {
                temp = arr[i];
                arr[i] = arr[j];
                arr[j] = temp;
            }
        }
    }
}

export function square(nbr) {
    return nbr * nbr;
}