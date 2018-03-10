import { Router } from 'express';
import * as Ctrl from './controller';

const router = Router();

router.post('/login', async (req, res) => {
  try {
    const user = await Ctrl.login(req.body);
    req.session.user = user;

    res.status(200).json({
      status: 200,
      message: 'Successfully logged in',
      data: user
    });
  } catch (status) {
    let message = '';
    switch (status) {
      case 500:
        message = 'Internal server error while logging in';
        break;
      case 422:
        message = 'Incorrect Username or Password';
        break;
    }
    res.status(status).json({ status, message });
  }
});

router.post('/logout', async (req, res) => {
  req.session.destroy();
  res.status(200).json({
    status: 200,
    message: 'Successfully logged out'
  });
});

router.post('/session', async (req, res) => {
  console.log(req.session)
  res.status(200).json({
    status: 200,
    message: 'Successfully fetched current session',
    data: req.session.user ? req.session.user:null
  });

});

export default router;