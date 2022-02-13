import { LangContext } from 'Contexts';
import { useContext } from 'react';
import './NavBar.css';

type Props = {
	handleClick: (e: React.MouseEvent<HTMLSelectElement, MouseEvent>) => void;
};

export default function NavBar ({ handleClick }: Props) {
	const { title } = useContext(LangContext);

	return (
		<div id='nav-bar'>
			<h1>{title}</h1>
			<select onClick={handleClick}>
				<option value='en'>English</option>
				<option value='jp'>日本語</option>
			</select>
		</div>
	);
}
