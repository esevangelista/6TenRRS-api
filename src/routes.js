'use strict';
import { Router } from 'express';
import customerRouter from './entities/customer/router';
import rewardRouter from './entities/reward/router';
import branchRouter from './entities/branch/router';
import productRouter from './entities/product/router';
//import session from 'express-session';


const router = Router();

router.use(customerRouter);
router.use(rewardRouter);
router.use(branchRouter);
router.use(productRouter);


router.get('/', function(req, res) {
  res.json({message: ' access http://localhost:3001/api/<route>'});
});

export default router;