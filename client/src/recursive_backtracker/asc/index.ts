import { instantiate } from "@assemblyscript/loader";
import { Api } from '../../AScApi';

export default async function Asc() {
  const module = await instantiate<Api>(fetch('http://localhost:3001/maze/rbt/asc'));
  return module.exports;
};
