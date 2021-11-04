const { add, getMaze, getArr } = require('./index').exports;
const { __getArray, __getString } = require('./index').exports;

console.log(add(1, 2));
console.log(__getString(getMaze(10, 10)));
console.log(__getArray(getArr()));