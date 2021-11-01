const express = require('express');
const mongoose = require('mongoose');

const app = express();

const connection = "mongodb://localhost:27017/mongo-test";
mongoose.connect(connection);

app.get("/",(req,res)=>{
  return res.send({"message":"test docker"})
});

const HOST = '0.0.0.0'

app.listen(process.env.APP_PORT,HOST);

console.log(`running on https://${HOST}:${PORT}`);
