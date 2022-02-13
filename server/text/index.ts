import { jp } from "./japanese";
import { en } from "./english";


export default function getText(lang: string) {
  switch(lang) {
    case 'jp':
      return jp;
    default: 
    return en;
  }
}