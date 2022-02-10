const Koa = require('koa');
const app = new Koa();

const bodyparser = require('koa-bodyparser');
const router = require('./router');

const PORT = process.env.PORT || 3001;

app
  .use(bodyparser())
  .use(router.routes());

(async function () {
  try {
    app.listen(PORT, function () {
      console.log(`Serving http://localhost:${PORT}`);
    });
  } catch (err) {
    console.log(err);
  }
})();