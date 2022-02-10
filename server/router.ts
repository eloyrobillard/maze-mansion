import fs from 'fs';
import Router from 'koa-router';
const router = new Router();

router.get('/maze', async (ctx) => {
  try {
    ctx.body = await fs.promises.readFile(__dirname + "/wasm/build/optimized.wasm");
    ctx.set('Content-type', 'application/wasm');
  } catch(e) {
    console.log(e);
  }
});

export default router;