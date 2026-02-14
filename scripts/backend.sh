#!/bin/bash
apt update -y
apt install nodejs npm -y

mkdir /app
cd /app

npm init -y
npm install express

cat <<EOF > app.js
const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Backend Working');
});

app.listen(3001, () => {
  console.log('Running on 3001');
});
EOF

node app.js
