const express = require('express');

const data = require('./data');

const port = process.env.PORT || 5000;
const app = express();

app.get('/', (req, res) => res.json(data.func()));

app.listen(port, () => console.log(`Example app listening on port http://localhost:${port}!`))