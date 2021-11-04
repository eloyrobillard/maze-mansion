const Koa = require('koa');
const app = new Koa();

const cors = require('cors');
const bodyparser = require('koa-bodyparser');
const router = require('./router');
const db = require('./models/index');

const PORT = process.env.PORT || 3001;

app
  // .use(cors())
  .use(bodyparser())
  .use(router.routes());

(async function () {
  try {
    await db;
    app.listen(PORT, function () {
      console.log(`Serving http://localhost:${PORT}`);
    });
  } catch (err) {
    console.log(err);
  }
})();