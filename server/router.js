const Router = require('koa-router');
const router = new Router();

const src = require('./controllers/src');
// const user = require('./controllers/user');

router.get('/maze/:algo/:src', src.getMazeAssembly);

module.exports = router;