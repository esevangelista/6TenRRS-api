'use strict';
import express from 'express';
import bodyParser from 'body-parser';
import logger from 'morgan';
import session from 'express-session';
import routes from './routes';

//https://hackernoon.com/restful-api-design-with-node-js-26ccf66eab09
const port = 3001;

const app = express();

//configure app to use bodyParser()
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(logger('dev'));


app.use(
  session({
    secret: '6tenrrs',
    resave: true,
    saveUninitialized: true
  })
);
// for CORS

app.use(function(req, res, next) {
  res.setHeader('Access-Control-Allow-Origin', '*');
  res.setHeader('Access-Control-Allow-Credentials', 'true');
  res.setHeader('Access-Control-Allow-Methods', 'GET,HEAD,OPTIONS,POST,PUT,DELETE');
  res.setHeader('Access-Control-Allow-Headers', 'Access-Control-Allow-Headers, Origin,Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers');
  res.setHeader('Cache-Control', 'no-cache');
  next();
});


app.use('/api', routes);

//start the server
const server = app.listen(port, (err) => {
  if (err) console.log(err);
  else console.log(`\n6-Ten Rewards Record System server is running at port ${port}`); 
});

export default server;