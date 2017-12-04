import { Router } from 'express';
import * as Ctrl from './controller';

const router = Router();


router.get('/promostar/', async (req, res) => {
  try {
    const promoStars= await Ctrl.getAllPromoStar();
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched promo stars',
      data: promoStars
    });
  } catch (status) {
    let message = '';
    switch (status) {
        case 404:
          message = 'Promo Stars not found';
          break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

router.get('/promostar/:Cid', async (req, res) => {
  try {
    const promoStars = await Ctrl.getPromoStarOfC(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched promo stars of customer',
      data: promoStars
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Promo stars of customer not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});


router.get('/promostar/:Cid/:PSid', async (req, res) => {

  try {
    const promostar = await Ctrl.getPromoStar(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched promo star',
      data: promostar
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Promo star  not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

router.delete('/promostar/:Cid/:PSid', async (req, res) => {
  try {
    await Ctrl.deletePromoStar(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully deleted promo star '
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Promo star not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

router.post('/promostar/:Cid/', async (req, res) => {
  try {
    const arr = req.body;
    for(var i=0;i<arr.length;i++){
      await Ctrl.addPromoStar(req.params,arr[i]);
    }
    res.status(200).json({
      status: 200,
      message: 'Successfully added promo star/s'
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});


router.put('/promostar/:Cid/:PSid', async (req, res) => {
  try {

    await Ctrl.updatePromoStar(req.params, req.body);
    const stock = await Ctrl.getPromoStar(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully updated a promo star',
      data: stock 
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Promo star not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

export default router;


