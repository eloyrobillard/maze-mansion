import { jp } from './japanese';
import { en } from './english';
import { Lang } from '../Types';

export default function getLang (lang: string): Lang {
	switch (lang) {
		case 'jp':
			return jp;
		default:
			return en;
	}
}
