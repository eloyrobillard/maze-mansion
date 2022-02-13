import fs from 'fs';

import getLang from './Lang';
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

router.get('/lang/:lang', async (ctx) => {
  try {
    const { lang } = ctx.params;
    ctx.body = getLang(lang);
  } catch (e) {
    console.log(e);
  }
});

export default router;