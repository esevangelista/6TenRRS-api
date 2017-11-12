import db from './../../database/index';


export const getPromo = ({ id}) => {
  return new Promise((resolve, reject) => {
    const query= `SELECT * FROM PROMO where PromoID= ?`;
    const values = [id];
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

export const getPromoOfP = ({ Pid, id}) => {
  return new Promise((resolve, reject) => {
    const query= `SELECT * FROM PROMO where ProductID = ? && PromoID= ?`;
    const values = [ Pid, id];
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

export const getAllPromo = () => {
  return new Promise((resolve, reject) => {
    const query = `SELECT * FROM PROMO`;
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

export const getAllPromoOfP = ({ Pid }) => {
  return new Promise((resolve, reject) => {
    const query= `SELECT * FROM PROMO where ProductID= ?`;
    const values = [Pid];
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

export const addPromo = ({ StarsEarnable, StarsNeeded, ExprDate, ProductID}) => {
  return new Promise((resolve, reject) => {
    const query = `INSERT INTO PROMO VALUES (DEFAULT, ?, ?, ?, ?)`;
    const values = [ StarsEarnable, StarsNeeded, ExprDate, ProductID];

    db.query(query, values, (err, results) => {
      if (err) {
        return reject(500);
      }
      return resolve(results.insertId);
    });
  });
};

export const updatePromo = ({ id }, { StarsEarnable, StarsNeeded, ExprDate, ProductID}) => {
  return new Promise((resolve, reject) => {
    const query = 
      `UPDATE PROMO SET 
      StarsEarnable = ? , StarsNeeded = ?, ExprDate = ? , ProductID = ?
      WHERE PromoID = ?`;
    const values = [ StarsEarnable, StarsNeeded, ExprDate, ProductID, id ];
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



export const deletePromo = ({ id }) => {
  return new Promise((resolve, reject) => {
    const query = `DELETE FROM PROMO where PromoID = ?`;
    const values = [id];
    db.query(query, values, (err, results) => {
      if (err) return reject(500);
      else if (!results.affectedRows) return reject(404);
      return resolve();
    });
  });
};

