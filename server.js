'use strict';

const express = require('express')
const app = express()
// Allocating os module
const os = require('os');
//App URls
app.get('/', (req, res) => res.send('Hello World ||| Hostname : '+os.hostname()))
app.get('/network', (req, res) => res.send(os.networkInterfaces()))
app.get('/hostname', (req, res) => res.send(os.hostname()))
//Listen
app.listen(3001, () => {
	  console.log(`Example app listening on port 3001!, use / for hello, /network for ip info, /hostname for actual hostname`)
})
