const express = require('express')
const app = express()
const port = 3001
const index = require('./route/app')


app.set('view engine','pug');

app.use('/',index)

app.listen(port, () => console.log(`Example app listening on port ${port}!`))