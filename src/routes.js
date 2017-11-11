'use strict';
import { Router } from 'express';
import db from './database/index'
//import session from 'express-session';
const router = Router();



router.get('/', function(req, res) {
  res.json({message: ' access http://localhost:3001/api/<route>'});
});

export default router;