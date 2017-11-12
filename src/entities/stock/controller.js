import db from './../../database/index';


export const getStock = ({ Bid, Sid }) => {
  return new Promise((resolve, reject) => {
    const query= `SELECT * FROM STOCK where Branch_id = ? && StockID = ?`;
    const values = [Bid, Sid]
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


export const getStockOfB = ({ Bid }) => {
  return new Promise((resolve, reject) => {
    const query= `SELECT * FROM STOCK WHERE Branch_id = ?`;
    const values = [Bid];
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

export const getAllStock = () => {
  return new Promise((resolve, reject) => {
    const query = `SELECT * FROM STOCK`;
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

export const deleteStock = ({ Bid, Sid }) => {
  return new Promise((resolve, reject) => {
    const query = `DELETE FROM STOCK where StockID = ? && Branch_id =?`;
    const values = [ Sid, Bid ];
    db.query(query, values, (err, results) => {
      if (err) return reject(500);
      else if (!results.affectedRows) return reject(404);
      return resolve();
    });
  });
};

export const addStock = ({ Bid},{ Product_id, Quantity}) => {
  return new Promise((resolve, reject) => {
    const query = `INSERT INTO STOCK VALUES (DEFAULT, ?, ?, ?)`;
    const values = [ Product_id, Bid, Quantity];
    db.query(query, values, (err, results) => {
      if (err) {
        console.log(err);
        return reject(500);
      }
      return resolve(results.insertId);
    });
  });
};

export const updateStock = ({ Bid, Sid }, { Product_id , Quantity }) => {
  
  return new Promise((resolve, reject) => {
    const query = 
      `UPDATE STOCK SET 
        Product_id = ${Product_id} , Quantity = ${Quantity}
        WHERE Branch_id = ${Bid} && StockID = ${Sid}`;
    db.query(query,(err, results) => {
      if (!results.affectedRows) {
        return reject(404);
      }else if (err) {
        return reject(500);
      }
      return resolve();
    });
  });
}



