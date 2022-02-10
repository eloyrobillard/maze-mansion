import Koa  from 'koa';
import bodyparser from 'koa-bodyparser';
import router from './router';

const app = new Koa();
const PORT = process.env.PORT || 3002;

app.use(bodyparser({})).use(router.routes());

app.listen(PORT, function () {
	console.log(`Serving http://localhost:${PORT}`);
});
