const express = require('express');

const data = require('./data');

const port = process.env.PORT || 5000;
const host = '0.0.0.0';
const app = express();

app.get('/', (req, res) => res.json(data.func()));

app.listen(port, host, () => console.log(`Example app listening on port http://localhost:${port}!`))