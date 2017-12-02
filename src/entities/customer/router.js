import { Router } from 'express';
import * as Ctrl from './controller';

const router = Router();

router.get('/customer/', async (req, res) => {
  try {
    const users = await Ctrl.getAllCustomer();
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched users',
      data: users
    });
  } catch (status) {
    let message = '';
    switch (status) {
        case 404:
          message = 'Users not found';
          break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

router.get('/customerName/:Name', async (req, res) => {
  try {
    const user = await Ctrl.getCustomerName(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched user',
      data: user
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'User not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

router.get('/customer/:id', async (req, res) => {
  try {
    const user = await Ctrl.getCustomer(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched user',
      data: user
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'User not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

router.delete('/customer/:id', async (req, res) => {
  try {
    await Ctrl.deleteCustomer(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully deleted user'
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'User not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

router.post('/customer/', async (req, res) => {
  try {
    const id = await Ctrl.addCustomer(req.body);
    const user = await Ctrl.getCustomer({ id });
    res.status(200).json({
      status: 200,
      message: 'Successfully created user',
      data: user
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

router.put('/customer/:id', async (req, res) => {
  try {
    await Ctrl.updateCustomer(req.params, req.body);
    const user = await Ctrl.getCustomer(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully updated user',
      data: user
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'User not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});


export default router;
