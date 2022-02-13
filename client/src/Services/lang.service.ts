import { Lang } from 'Types';

export async function getLang(lang: string): Promise<Lang> {
  return fetch(`http://localhost:3002/lang/${lang}`)
            .then(res => res.json());
}