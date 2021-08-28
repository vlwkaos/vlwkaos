import './static_res/styles.css';

global css html 
	ff:RIDIBatang,-apple-system,BlinkMacSystemFont,Segoe UI,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol
	c:#333
	fs:1rem
	background: linear-gradient(to right, rgb(100, 149, 237), pink)
	bgc: pink

const projects = [
	{
		link: "https://vlwkaos.netlify.app", 
		title: "디지털가든 (2021)", 
		img: "https://raw.githubusercontent.com/vlwkaos/static_res/main/dg/dg.gif",
		desc: "더 나은 삶을 살고자 배움과 경험을 기록하고 생각을 정리하는 공간.",
		alt: "Digital Garden"
	},
	{
		link: "https://vlwkaos-three-js-blackhole.netlify.app", 
		title: "강착원반과 블랙홀 (2019)", 
		img: "https://raw.githubusercontent.com/vlwkaos/static_res/main/dg/blackhole_ex_15.gif",
		desc: "진짜 블랙홀의 사진을 찍기 전까지 사람들은 '블랙홀'하면 영화 인터스텔라 블랙홀 CG을 떠올렸었다. 
		블랙홀에 한창 매료되어있을 때, 이 CG를 재현해보고 싶었다. 가장 간단한 블랙홀인 슈바르츠실트 블랙홀을 실시간 레이트레이싱 렌더링했다.",
		alt: "Blackhole raytracing"
	},
	{
		link: "/ard", 
		title: "랜덤 디펜스 게임 (2019)", 
		img: "https://raw.githubusercontent.com/vlwkaos/static_res/main/dg/ard_ex.gif",
		desc: "여러 특징을 가진 사각형 유닛을 비치하고 조합하여 밀려오는 원형 유닛을 제거해야하는 디펜스 형식의 게임.",
		alt: "Random Defence"
	},
	{
		link: "/tetris",
		title: "테트리스 (2019)",	
		img: "https://raw.githubusercontent.com/vlwkaos/static_res/main/dg/tetris_ex.gif",
		desc: "개발자라면 누구나 한번쯤 만들어본다는 테트리스. 
		시간에 따라 방해요소가 등장하며 난이도가 상승한다. 연속으로 줄을 없앨 경우 콤보 보너스가 있다.",
		alt: "Yet another tetris"
	},
	{
		link: "https://play.google.com/store/apps/details?id=com.lumibottle.game",
		title: "소다람쥐 (2017)",	
		img: "https://raw.githubusercontent.com/vlwkaos/static_res/main/dg/sodaricus_ex.gif",
		desc: "다람쥐가 베이컨을 타며 우주를 누비며 소다병을 던진다. 여러가지 짜증나는 게임 요소를 종합하여 만든 안드로이드용 원터치 아케이드 게임이다.",
		alt: "Sodaricus"
	}
]
	
tag project-item
	<self>
		<h3> 
			<a href=data.link target="_blank"> data.title 
		<p> data.desc
		<p align='center'>
			<img loading='lazy' src=data.img style='aspect-ratio: 4 / 3'>
			<br>
			<span> data.alt
			
const goTo = do(link) window.location = link

tag app
	<self[d:vflex ja:center]>
		<header[d:hflex g:1rem mb:5rem]>
			<img[rd:100 w:3rem cursor:pointer] @click=goTo('https://github.com/vlwkaos') src='https://raw.githubusercontent.com/vlwkaos/static_res/main/dg/vlwkaos.png'>
			
		<section[d:grid g:2em gta:"side" "content" gtc@md:2fr 3fr] id="notes-entry-container">
			<side[pos@md:sticky t:0 h:min-content]>
				<h3> "안녕하세요! vlwkaos입니다."
				<p> "저의 웹사이트에 오신것을 환영합니다."
					<br> 
					"저는 현재 서울에서 웹 프론트엔드 개발자로 일하고 있습니다."
					<br>
					"컴퓨터/개발에 전반적으로 관심이 많으며,"
					<br>
					"기술이 사람들에게 어떤 영향을 끼칠지 항상 고민합니다. "

				<p> "요즘에는 웹과 기술 윤리에 관심을 갖고 있으며, "
					<br>
					"취미로는 주로 시각적인 토이 프로젝트를 진행하고 있습니다. "
					<br>
					"제가 만든 토이 프로젝트 일부를 오른쪽에서 확인할 수 있습니다. "
					<br>
					"제목을 클릭하면 데모를 직접확인할 수 있습니다. "

			<content[mw:640px]>
				for prj in projects
					<project-item data=prj>
					<hr>
			<footer>
				<p> "이 웹사이트는 {<a href='https://imba.io/'> "imba"}를 이용하여 만들었습니다."


imba.mount <app>
