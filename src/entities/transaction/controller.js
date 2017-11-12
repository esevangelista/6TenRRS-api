import db from './../../database/index';

export const getTransactionOfCinB = ({ Bid, Cid }) => {
  return new Promise((resolve, reject) => {
    const query= `SELECT * FROM TRANSACTION where BranchId = ? && CustomerId = ?`;
    const values = [Bid, Cid]
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

export const getTransactionOfB = ({ Bid }) => {
  return new Promise((resolve, reject) => {
    const query= `SELECT * FROM TRANSACTION WHERE BranchId= ?`;
    const values = [ Bid ];
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

export const getTransactionOfC = ({ Cid }) => {
  return new Promise((resolve, reject) => {
    const query= `SELECT * FROM TRANSACTION WHERE CustomerId= ?`;
    const values = [ Cid ];
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

export const getTransaction = ({ id }) => {
  return new Promise((resolve, reject) => {
    const query= `SELECT * FROM TRANSACTION WHERE TransID= ?`;
    const values = [ id ];
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

export const getAllTransaction = () => {
  return new Promise((resolve, reject) => {
    const query = `SELECT * FROM TRANSACTION`;
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

export const deleteTransaction = ({ id }) => {
  return new Promise((resolve, reject) => {
    const query = `DELETE FROM TRANSACTION where TransID = ?`;
    const values = [ id ];
    db.query(query, values, (err, results) => {
      if (err) return reject(500);
      else if (!results.affectedRows) return reject(404);
      return resolve();
    });
  });
};

export const addTransaction = ({ Bid },{ Payment_amt, Payment_type, TransDesc, DateCreated, DateUpdated, CustomerId}) => {
  return new Promise((resolve, reject) => {
    const query = `INSERT INTO TRANSACTION VALUES (DEFAULT, ?, ?, ?, ?, ?, ?, ?)`;
    const values = [ Payment_amt, Payment_type, TransDesc, DateCreated, DateUpdated, CustomerId, Bid];
    db.query(query, values, (err, results) => {
      if (err) {
        console.log(err);
        return reject(500);
      }
      return resolve(results.insertId);
    });
  });
};

export const updateTransaction = ({ id }, { Payment_amt, Payment_type, TransDesc }) => {
  
  return new Promise((resolve, reject) => {
    const query = 
      `UPDATE TRANSACTION SET 
        Payment_amt = ?, Payment_type = ?, TransDesc = ?, DateUpdated = ?
        WHERE  TransID = ?`;
    const DateUpdated = new Date();
    const values = [ Payment_amt, Payment_type, TransDesc, DateUpdated, id];

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
