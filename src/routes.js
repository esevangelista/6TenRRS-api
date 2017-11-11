'use strict';
import { Router } from 'express';
import customerRouter from './entities/customer/router';
//import session from 'express-session';


const router = Router();

router.use(customerRouter);


router.get('/', function(req, res) {
  res.json({message: ' access http://localhost:3001/api/<route>'});
});

export default router;