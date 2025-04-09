// Given an array of functions [f1, f2, f3, ..., fn], return a new function fn that is the function composition of the array of functions.
// The function composition of [f(x), g(x), h(x)] is fn(x) = f(g(h(x))).


/**
 * @param {Function[]} functions
 * @return {Function}
 */
var compose = function(functions) {
    return function(x) {
        for(let i = functions.length - 1; i > 0; i--) {
            // functions[i-1] = functions[i](x);
            console.log(functions[i-1](functions[i](x)));
        }
    }
};



const fn = compose([x => 10 * x, x => 10 * x, x => 10 * x])
fn(1) // 9
