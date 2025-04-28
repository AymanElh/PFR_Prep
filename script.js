let arr = [{

    name:"aymen",
    age:"20"
},{

    name:"med",
    age:"10"
},{

    name:"hamza",
    age:"20"
},{

    name:"rayan",
    age:"10"
},
]

//outb  = {20:[]}

function getPersonByAge(age) {
    let newArr = [];
    for(let i = 0; i < arr.length; i++) {
        if(arr[i].age === age) {
            newArr.push(arr[i].name);
        }
    }
    return newArr;
}

function getPersonWithAge() {
    let obj = {};
    for(let i = 0; i < arr.length; i++) {
        obj[arr[i].age] = getPersonByAge(arr[i].age);
    }
    return obj;
}

console.log(getPersonWithAge());