import { Router } from 'express';
import * as Ctrl from './controller';

const router = Router();


router.get('/transaction/', async (req, res) => {
  try {
    const transactions = await Ctrl.getAllTransaction();
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched transactions',
      data: transactions
    });
  } catch (status) {
    let message = '';
    switch (status) {
        case 404:
          message = 'Transactions not found';
          break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

router.get('/transaction/branch/:Bid', async (req, res) => {
  try {
    const transactions = await Ctrl.getTransactionOfB(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched transactions of branch',
      data: transactions
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Transactions of branch not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

router.get('/transaction/:Bid/:Cid', async (req, res) => {

  try {
    const transactions = await Ctrl.getTransactionOfCinB(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched transactions of customer in branch',
      data: transactions
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Transactions of customer in branch not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});


router.get('/transaction/customer/:Cid', async (req, res) => {
  try {
    const transactions = await Ctrl.getTransactionOfC(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched transactions of customer',
      data: transactions
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Transactions of customer not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});


router.get('/transaction/:id', async (req, res) => {
  try {
    const transaction = await Ctrl.getTransaction(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched transaction',
      data: transaction
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Transaction not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});


router.delete('/transaction/:id', async (req, res) => {
  try {
    await Ctrl.deleteTransaction(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully deleted transaction '
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Transaction not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});


router.post('/transaction/:Bid', async (req, res) => {
  try {
    const id = await Ctrl.addTransaction(req.params,req.body);
    const transaction= await Ctrl.getTransaction({ id });
    res.status(200).json({
      status: 200,
      message: 'Successfully added a transaction',
      data: transaction
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

router.put('/transaction/:id', async (req, res) => {
  try {

    await Ctrl.updateTransaction(req.params, req.body);
    const transaction = await Ctrl.getTransaction(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully updated a transaction',
      data: transaction
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Transaction not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});


export default router;
