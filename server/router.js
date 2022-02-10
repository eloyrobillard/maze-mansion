const Router = require('koa-router');
const router = new Router();

const wasm = require('./wasm/index');

router.get('/maze/:algo/:src', wasm.getAssembly);

module.exports = router;