import { Router } from 'express';
import * as Ctrl from './controller';

const router = Router();

// all rewards
router.get('/reward/', async (req, res) => {
  try {
    const rewards = await Ctrl.getAllReward();
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched rewards',
      data: rewards
    });
  } catch (status) {
    let message = '';
    switch (status) {
        case 404:
          message = 'Rewards not found';
          break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});
// all rewards belonging to CustomerId
router.get('/reward/:Cid', async (req, res) => {
  try {
    const rewards = await Ctrl.getRewardOfC(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched rewards ',
      data: rewards
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Rewards not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

// get reward specified by the CustomerId and RewardID
router.get('/reward/:Cid/:Rid', async (req, res) => {

  try {
    const reward = await Ctrl.getReward(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully fetched reward',
      data: reward
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'reward not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

// remove reward
router.delete('/reward/:id', async (req, res) => {
  try {
    await Ctrl.deleteReward(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully deleted reward '
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Reward not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});

// add reward
router.post('/reward/:id', async (req, res) => {
  try {
    const id = await Ctrl.addReward(req.params,req.body);
    const reward = await Ctrl.getReward({ id });
    res.status(200).json({
      status: 200,
      message: 'Successfully added a reward',
      data: reward
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

//update reward
router.put('/reward/:Cid/:Rid', async (req, res) => {
  try {
    await Ctrl.updateReward(req.params, req.body);
    const reward = await Ctrl.getCustomer(req.params);
    res.status(200).json({
      status: 200,
      message: 'Successfully updated reward',
      data: reward
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 404:
        message = 'Reward not found';
        break;
      case 500:
        message = 'Internal server error';
        break;
    }
    res.status(status).json({ status, message });
  }
});



export default router;