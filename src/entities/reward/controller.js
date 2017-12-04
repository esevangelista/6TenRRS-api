import db from './../../database/index';
import moment from 'moment';
export const getReward = ({ id}) => {
  return new Promise((resolve, reject) => {
    const query= `SELECT * FROM REWARD where RewardID = ? `;
    const values = [id]
    db.query(query,values,(err, rows) => {
      if (err) {
        return reject(500);
      }else if (!rows.length) {
        return reject(404);
      }
      return resolve(rows[0]);
    });
  });
}

export const getRewardOfC = ({ Cid }) => {
  return new Promise((resolve, reject) => {
    const query= `SELECT * FROM REWARD r left join CUSTOMER c on r.CustomerId = c.CustomerID where c.CustomerID = ?`;
    const values = [Cid];
    db.query(query,values,(err, rows) => {
      if (err) {
        return reject(500);
      }else if (!rows.length) {
        return reject(404);
      }
      return resolve(rows);
    });
  });
}


export const getAllReward = () => {
  return new Promise((resolve, reject) => {
    const query = `SELECT * FROM REWARD r left join CUSTOMER c on  r.CustomerId=c.CustomerID`;
    const values = [];
    db.query(query, values, (err, rows) => {
      if (err) {
        return reject(500);
      }else if (!rows.length) {
        return reject(404);
      }
      return resolve(rows);
    });
  });
};
export const getAllRewardRev = () => {
  return new Promise((resolve, reject) => {
    const query = `Select Name, SUM(Points) "Points" from reward left join customer on reward.CustomerId=customer.CustomerID where DateUsed IS NULL group by Name `;
    const values = [];
    db.query(query, values, (err, rows) => {
      if (err) {
        return reject(500);
      }else if (!rows.length) {
        return reject(404);
      }
      return resolve(rows);
    });
  });
};
export const deleteReward = ({ id }) => {
  return new Promise((resolve, reject) => {
    const query = `DELETE FROM REWARD where RewardID = ?`;
    const values = [id];
    db.query(query, values, (err, results) => {
      if (err) return reject(500);
      else if (!results.affectedRows) return reject(404);
      return resolve();
    });
  });
};


export const addReward = ({id},{Points}) => {
  return new Promise((resolve, reject) => {
    const query = `INSERT INTO REWARD VALUES (DEFAULT, ?, ?, ?, ?)`;
    const values = [ Points, null, new Date(), id];
    db.query(query, values, (err, results) => {
      if (err) {
        return reject(500);
      }
      return resolve(results.insertId);
    });
  });
};

export const updateReward = ({ Cid, Rid }, { Points, DateUsed, DateEarned }) => {
  return new Promise((resolve, reject) => {
    const query = 
      `UPDATE REWARD SET 
        Points = ? , DateUsed = ?, DateEarned = ?, CustomerId = ?
        WHERE RewardID = ?`;
    const values = [ Points, DateUsed, DateEarned, Cid ];
    db.query(query, values, (err, results) => {
      if (!results.affectedRows) {
        return reject(404);
      }else if (err) {
        return reject(500);
      }

      return resolve();
    });
  });
}

export const getEarnedPtsOfCinYear = ({ Cid , Year}) => {
  return new Promise((resolve, reject) => {
    const query= `SELECT * FROM REWARD WHERE CustomerId = ? && Year(DateEarned) = ?`;
    const values = [Cid, Year];
    db.query(query,values,(err, rows) => {
      if (err) {
        return reject(500);
      }else if (!rows.length) {
        return reject(404);
      }
      return resolve(rows);
    });
  });
}

export const getUsedPtsOfCinYear = ({ Cid , Year}) => {
  return new Promise((resolve, reject) => {
    const query= `SELECT * FROM REWARD WHERE CustomerId = ? && Year(DateUsed) = ?`;
    const values = [Cid, Year];
    db.query(query,values,(err, rows) => {
      if (err) {
        return reject(500);
      }else if (!rows.length) {
        return reject(404);
      }
      return resolve(rows);
    });
  });
}
