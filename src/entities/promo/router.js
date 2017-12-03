import { Router } from 'express';
import * as Ctrl from './controller';

const router = Router();



router.get('/promo/', async (req, res) => {
  try {
    const promos = await Ctrl.getAllPromo();
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched promos',
      data: promos
    });
  } catch (status) {
    let message = '';
    switch (status) {
        case 404:
          message = 'Promos not found';
          break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

router.get('/promo/:Pid/:id', async (req, res) => {
  try {
    const promo = await Ctrl.getPromoOfP(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched promo of product',
      data: promo
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Promo not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});


router.get('/promo/:Name', async (req, res) => {
  try {
    const promos = await Ctrl.getAllPromoOfP(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched promos of product',
      data: promos
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Promos not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});


router.post('/promo/', async (req, res) => {
  try {
    const id = await Ctrl.addPromo(req.body);
    const promo = await Ctrl.getPromo({ id });
    res.status(200).json({
      status: 200,
      message: 'Successfully added promo',
      data: promo
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

router.delete('/promo/:id', async (req, res) => {
  try {
    await Ctrl.deletePromo(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully deleted promo'
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Promo not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

router.put('/promo/:id', async (req, res) => {
  try {
    await Ctrl.updatePromo(req.params, req.body);
    const promo = await Ctrl.getPromo(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully updated promo',
      data: promo
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Promo not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

export default router;
