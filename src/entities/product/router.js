import { Router } from 'express';
import * as Ctrl from './controller';

const router = Router();

router.get('/product/', async (req, res) => {
  try {
    const products = await Ctrl.getAllProduct();
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched products',
      data: products
    });
  } catch (status) {
    let message = '';
    switch (status) {
        case 404:
          message = 'Products not found';
          break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

router.get('/product/:id', async (req, res) => {
  try {
    const product = await Ctrl.getProduct(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched product',
      data: product
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Product not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});
router.get('/productName/:ProdName', async (req, res) => {
  try {
    const products = await Ctrl.getProductName(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched products',
      data: products
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Product not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});
router.delete('/product/:id', async (req, res) => {
  try {
    await Ctrl.deleteProduct(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully deleted product'
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Product not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

router.post('/product/', async (req, res) => {
  try {
    const id = await Ctrl.addProduct(req.body);
    const product = await Ctrl.getProduct({ id });
    res.status(200).json({
      status: 200,
      message: 'Successfully added product',
      data: product
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

router.put('/product/:id', async (req, res) => {
  try {
    await Ctrl.updateProduct(req.params, req.body);
    const product = await Ctrl.getProduct(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully updated product',
      data: product
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Product not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});




export default router;
