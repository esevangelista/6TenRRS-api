import db from './../../database/index';


export const getProduct = ({id}) => {
  return new Promise((resolve, reject) => {
    const query= `SELECT * FROM PRODUCT where ProdID= ?`;
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


export const getAllProduct = () => {
  return new Promise((resolve, reject) => {
    const query = `SELECT * FROM PRODUCT`;
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

export const deleteProduct = ({ id }) => {
  return new Promise((resolve, reject) => {
    const query = `DELETE FROM PRODUCT where ProdID = ?`;
    const values = [id];
    db.query(query, values, (err, results) => {
      if (err) return reject(500);
      else if (!results.affectedRows) return reject(404);
      return resolve();
    });
  });
};

export const addProduct = ({ ProdName, ProdPoints, Price}) => {
  return new Promise((resolve, reject) => {
    const query = `INSERT INTO PRODUCT VALUES (DEFAULT, ?, ?, ?)`;
    const values = [ ProdName, ProdPoints, Price];

    db.query(query, values, (err, results) => {
      if (err) {
        return reject(500);
      }
      return resolve(results.insertId);
    });
  });
};

export const updateProduct = ({ id }, { ProdName, ProdPoints, Price}) => {
  return new Promise((resolve, reject) => {
    const query = 
      `UPDATE PRODUCT SET 
      ProdName = ?, ProdPoints = ? , Price = ?
      WHERE ProdID = ?`;
    const values = [ ProdName, ProdPoints, Price, id];
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

