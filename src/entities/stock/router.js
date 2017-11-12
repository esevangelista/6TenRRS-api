import { Router } from 'express';
import * as Ctrl from './controller';

const router = Router();


// all stocks 
router.get('/stock/', async (req, res) => {
  try {
    const stocks = await Ctrl.getAllStock();
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched stocks',
      data: stocks
    });
  } catch (status) {
    let message = '';
    switch (status) {
        case 404:
          message = 'Stocks not found';
          break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

router.get('/stock/:Bid', async (req, res) => {
  try {
    const stocks = await Ctrl.getStockOfB(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched stocks ',
      data: stocks
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Stocks not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

router.get('/stock/:Bid/:Sid', async (req, res) => {

  try {
    const stock = await Ctrl.getStock(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched stock',
      data: stock
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Stock not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

router.delete('/stock/:Bid/:Sid', async (req, res) => {
  try {
    await Ctrl.deleteStock(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully deleted stock '
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Stock not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

router.post('/stock/:Bid/', async (req, res) => {
  try {
    const id = await Ctrl.addStock(req.params,req.body);
    req.params.Sid = id;
    const stock = await Ctrl.getStock(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully added stock',
      data: stock
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

router.put('/stock/:Bid/:Sid', async (req, res) => {
  try {

    await Ctrl.updateStock(req.params, req.body);
    const stock = await Ctrl.getStock(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully updated a stock',
      data: stock 
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Stock not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

export default router;
