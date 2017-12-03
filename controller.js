import db from './../../database/index';


export const getBranchName = ({name}) => {
  return new Promise((resolve ,reject) => {
    const query = `SELECT * FROM BRANCH where name LIKE ?`;
    const values = [`%${Name}%`];
    db.query(query, values,(err, rows) => {
      if (err) return reject(500);
      else if (!rows.length) return reject(404);
      return resolve(rows);
    });
  });
}

export const getBranch = ({id}) => {
  return new Promise((resolve, reject) => {
    const query= `SELECT * FROM BRANCH where BranchID = ?`;
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


export const getAllBranch = () => {
  return new Promise((resolve, reject) => {
    const query = `SELECT * FROM BRANCH`;
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


export const deleteBranch = ({ id }) => {
  return new Promise((resolve, reject) => {
    const query = `DELETE FROM BRANCH where BranchID= ?`;
    const values = [id];
    db.query(query, values, (err, results) => {
      if (err) return reject(500);
      else if (!results.affectedRows) return reject(404);
      return resolve();
    });
  });
};

export const addBranch = ({ BranchLocation, BranchManager }) => {
  return new Promise((resolve, reject) => {
    const query = `INSERT INTO BRANCH VALUES (DEFAULT, ?, ?)`;
    const values = [ BranchLocation, BranchManager];

    db.query(query, values, (err, results) => {
      if (err) {
        return reject(500);
      }
      return resolve(results.insertId);
    });
  });
};


export const updateBranch= ({ id }, { BranchLocation, BranchManager }) => {
  return new Promise((resolve, reject) => {
    const query = 
      `UPDATE BRANCH SET BranchLocation = ? , BranchManager = ? 
        WHERE BranchID = ?`;
    const values = [ BranchLocation, BranchManager, id];
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
