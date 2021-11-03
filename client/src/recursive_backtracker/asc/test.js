const promise = require('./index');

promise.then(({ exports }) => {
  console.log(exports.add(1, 2));
  console.log(exports.getMaze(10, 10));
}).catch((err) => console.log(err));
