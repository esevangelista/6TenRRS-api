import { Router } from 'express';
import * as Ctrl from './controller';

const router = Router();

router.get('/branch/', async (req, res) => {
  try {
    const branches = await Ctrl.getAllBranch();
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched branches',
      data: branches
    });
  } catch (status) {
    let message = '';
    switch (status) {
        case 404:
          message = 'Branches not found';
          break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

router.get('/branch/:Name', async (req, res) => {
  try {
    const user = await Ctrl.getBranchName(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched branch',
      data: branch
    })
  } catch(status){
    let message = '';
    switch (status) {
      case 404:
        message = 'USer not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({status, message});
  }
});

router.get('/branch/:id', async (req, res) => {
  try {
    const branch = await Ctrl.getBranch(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched branch',
      data: branch
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Branch not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

router.delete('/branch/:id', async (req, res) => {
  try {
    await Ctrl.deleteBranch(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully deleted branch'
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Branch not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

router.post('/branch/', async (req, res) => {
  try {
    const id = await Ctrl.addBranch(req.body);
    const branch = await Ctrl.getBranch({ id });
    res.status(200).json({
      status: 200,
      message: 'Successfully created branch',
      data: branch
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

router.put('/branch/:id', async (req, res) => {
  try {
    await Ctrl.updateBranch(req.params, req.body);
    const branch = await Ctrl.getBranch(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully updated branch',
      data: branch
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Branch not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});


export default router;
