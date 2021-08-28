import express from 'express'
import index from './app/index.html'
import tetris from './app/static_res/tetris.html'
import ard from './app/static_res/ard.html'

const app = express!

app.get(/ard/) do(req,res)
	unless req.accepts(['image/*', 'html']) == 'html'
		return res.sendStatus(404)

	res.send ard.body

app.get(/tetris/) do(req,res)
	unless req.accepts(['image/*', 'html']) == 'html'
		return res.sendStatus(404)

	res.send tetris.body


# catch-all route that returns our index.html
app.get(/.*/) do(req,res)
	# only render the html for requests that prefer an html response
	unless req.accepts(['image/*', 'html']) == 'html'
		return res.sendStatus(404)

	res.send index.body

imba.serve app.listen(process.env.PORT or 3000)
