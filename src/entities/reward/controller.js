import db from './../../database/index';

export const getReward = ({ Cid, Rid}) => {
  return new Promise((resolve, reject) => {
    const query= `SELECT * FROM REWARD where RewardID = ? && CustomerId = ?`;
    const values = [Rid, Cid]
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
    const query= `SELECT * FROM REWARD WHERE CustomerId = ?`;
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
    const query = `SELECT * FROM REWARD`;
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


export const addReward = ({id},{Points, DateEarned}) => {
  return new Promise((resolve, reject) => {
    const query = `INSERT INTO REWARD VALUES (DEFAULT, ?, ?, ?, ?)`;
    const values = [ Points, null, DateEarned, id];
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

