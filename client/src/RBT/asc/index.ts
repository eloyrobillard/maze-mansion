import { instantiate } from "@assemblyscript/loader";
import { WasmApi } from '../../AScApi';

export default async function Asc() {
  const module = await instantiate<WasmApi>(fetch('http://localhost:3001/maze/rbt/asc'));
  return module.exports;
};
