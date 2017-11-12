import db from './../../database/index';
import moment from 'moment';


export const getCustomer = ({id}) => {
  return new Promise((resolve, reject) => {
    const query= `SELECT * FROM CUSTOMER where CustomerID = ?`;
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


export const getAllCustomer = () => {
  return new Promise((resolve, reject) => {
    const query = `SELECT * FROM CUSTOMER`;
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

export const deleteCustomer = ({ id }) => {
  return new Promise((resolve, reject) => {
    const query = `DELETE FROM CUSTOMER where CustomerID = ?`;
    const values = [id];
    db.query(query, values, (err, results) => {
      if (err) return reject(500);
      else if (!results.affectedRows) return reject(404);
      return resolve();
    });
  });
};

export const addCustomer = ({ Name, Address, ContactNum, Birthday}) => {
  return new Promise((resolve, reject) => {
    const query = `INSERT INTO CUSTOMER VALUES (DEFAULT, ?, ?, ?, ?, ?)`;
    const Age = moment().diff(Birthday,'years',false);
    const values = [ Name, Address, ContactNum, Birthday, Age];

    db.query(query, values, (err, results) => {
      if (err) {
        return reject(500);
      }
      return resolve(results.insertId);
    });
  });
};

export const updateCustomer = ({ id }, { Name, Address, ContactNum, Birthday }) => {
  return new Promise((resolve, reject) => {
    const query = 
      `UPDATE CUSTOMER SET 
        Name = ?, Address = ? , ContactNum = ?, Birthday = ? , Age = ? 
        WHERE CustomerID = ?`;
    const Age = moment().diff(Birthday,'years',false);
    const values = [ Name, Address, ContactNum, Birthday, Age, id];
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

