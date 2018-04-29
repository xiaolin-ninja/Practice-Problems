/*String.prototype.repeatify = function(numTimes) {
    return new Array(numTimes + 1).join(this);
};
console.log('hello'.repeatify(7));
    //should print hello 7 times*/

   String.prototype.repeatify = function(numTimes) {
      var strArray = [];
      for (var i = 0; i < numTimes; i++) {
        strArray.push(this);
      }
      return strArray;
    };
    console.log('hello'.repeatify(5));