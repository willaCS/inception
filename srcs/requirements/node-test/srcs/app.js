const express = require('express')
const cors = require('cors')

const app = express()

app.use(cors())

app.get('/', (req, res) => {
	console.log("Request received :D")
	res.json("LOL")
})

app.listen(4000, () => {
	console.log('listening for requests on port 4000')
})