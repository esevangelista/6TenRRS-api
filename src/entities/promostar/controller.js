import db from './../../database/index';


export const getPromoStar= ({ Cid, PSid }) => {
  return new Promise((resolve, reject) => {
    const query= `SELECT * FROM PROMOSTAR where CustomerId= ? && PromoStarID = ?`;
    const values = [ Cid, PSid]
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


export const getPromoStarOfC = ({ Cid }) => {
  return new Promise((resolve, reject) => {
    const query= `SELECT * FROM PROMOSTAR WHERE CustomerId = ?`;
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

export const getValidPromoStarOfC = ({ Cid }) => {
  return new Promise((resolve, reject) => {
    const query= `SELECT * FROM PROMOSTAR WHERE CustomerId = ? && DateUsed IS NULL && ExprDate != ? `;
    const values = [ Cid , new Date() ]; 
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

export const getUsedPromoStarOfC = ({ Cid }) => {
  return new Promise((resolve, reject) => {
    const query= `SELECT * FROM PROMOSTAR WHERE CustomerId = ? && DateUsed IS NOT NULL `;
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

export const getAllPromoStar = () => {
  return new Promise((resolve, reject) => {
    const query = `SELECT * FROM PROMOSTAR`;
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


export const deletePromoStar = ({ Cid, PSid }) => {
  return new Promise((resolve, reject) => {
    const query = `DELETE FROM PROMOSTAR where PromoStarID = ? && CustomerId =?`;
    const values = [ PSid, Cid ];
    db.query(query, values, (err, results) => {
      if (err) return reject(500);
      else if (!results.affectedRows) return reject(404);
      return resolve();
    });
  });
};


export const addPromoStar = ({ Cid} ,{ Starsval, ExprDate, PromoId }) => {
  return new Promise((resolve, reject) => {
    const query = `INSERT INTO PROMOSTAR VALUES (DEFAULT, ?, ?, ?, ?, ?, ?)`;
    const values = [ Starsval, null, new Date(), ExprDate, Cid, PromoId];
    db.query(query, values, (err, results) => {
      if (err) {
        console.log(err);
        return reject(500);
      }
      return resolve(results.insertId);
    });
  });
};


export const updatePromoStar = ({ Cid, PSid }, { Starsval, DateUsed, DateEarned, ExprDate, PromoId }) => {
  
  return new Promise((resolve, reject) => {
    const query = 
      `UPDATE PROMOSTAR SET 
        Starsval = ?, DateUsed = ?, DateEarned = ?, ExprDate =?, PromoId = ?
        WHERE CustomerId = ? && PromoStarID = ? `;
    const values = [Starsval, DateUsed, DateEarned, ExprDate, PromoId,  Cid, PSid ]
    db.query(query, values,(err, results) => {
      if (!results.affectedRows) {
        return reject(404);
      }else if (err) {
        return reject(500);
      }
      return resolve();
    });
  });
}

