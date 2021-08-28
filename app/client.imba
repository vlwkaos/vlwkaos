import { Home } from './components/Home'
import './static_res/styles.css';

global css html 
	ff:RIDIBatang,-apple-system,BlinkMacSystemFont,Segoe UI,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol
	c:#333
	fs:1rem
	background: linear-gradient(to right, rgb(100, 149, 237), pink)
	bgc: pink
			

tag app
	<self[d:vflex ja:center]>
		<Home>
		<footer>
			<p> "이 웹사이트는 {<a href='https://imba.io/'> "imba"}를 이용하여 만들었습니다."


imba.mount <app>
