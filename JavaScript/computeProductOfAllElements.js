/*
Write a function called "computeProductOfAllElements".

Given an array of numbers, "computeProductOfAllElements" returns the products of all the elements in the given array.

Notes:
* If given array is empty, it should return 0.

var output = computeProductOfAllElements([2, 5, 6]);
console.log(output); // --> 60
*/

function computeProductOfAllElements(arr) {
  if(Array.isArray(arr) && arr.length !== 0) {
    var x = arr.reduce(function(product, num) {
      return product * num
    })
  } else {
      return 0
    }
  return x
  } 


