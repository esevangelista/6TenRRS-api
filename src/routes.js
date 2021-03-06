'use strict';
import { Router } from 'express';
import session from 'express-session';
import customerRouter from './entities/customer/router';
import rewardRouter from './entities/reward/router';
import branchRouter from './entities/branch/router';
import productRouter from './entities/product/router';
import stockRouter from './entities/stock/router';
import promoRouter from './entities/promo/router';
import promoStarRouter from './entities/promostar/router';
import transactionRouter from './entities/transaction/router';
import authRouter from './entities/auth/router';
const router = Router();



router.use(authRouter);

// router.use((req, res, next) => {
//   if (req.session.user) {
//     return next();
//   }

//   res.status(401).json({
//     status: 401,
//     message: 'Must be logged in'
//   });
// });


router.use(customerRouter);
router.use(rewardRouter);
router.use(branchRouter);
router.use(productRouter);
router.use(stockRouter);
router.use(promoRouter);
router.use(promoStarRouter);
router.use(transactionRouter);

router.get('/', function(req, res) {
  res.json({message: ' access http://localhost:3001/api/<route>'});
});

export default router;