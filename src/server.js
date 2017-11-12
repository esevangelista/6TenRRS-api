'use strict';
import express from 'express';
import bodyParser from 'body-parser';
import logger from 'morgan';
import session from 'express-session';
import routes from './routes';

//https://hackernoon.com/restful-api-design-with-node-js-26ccf66eab09
const port = process.env.PORT || 3001;

const app = express();

//configure app to use bodyParser()
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(logger('dev'));


app.use('/api', routes);

//start the server
const server = app.listen(port, (err) => {
  if (err) console.log(err);
  else console.log(`\n6-Ten Rewards Record System server is running at port ${port}`); 
});

export default server;