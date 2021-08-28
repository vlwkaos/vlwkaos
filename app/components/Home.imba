import {ProjectItem, projects} from './ProjectItem.imba'

const goTo = do(link) window.location = link

export tag Home
	<self>
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
					<ProjectItem data=prj>
					<hr>
