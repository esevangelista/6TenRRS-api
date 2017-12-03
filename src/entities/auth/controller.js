import db from './../../database/index';


export const login = ({username, password}) => {
  return new Promise((resolve, reject) => {
    const query = `SELECT * FROM USER WHERE username = ? && password = ?;`
    const values = [username,password];
    db.query(query,values,(err,result) => {
      if(err) return reject(500);
      else if (!result.length) return reject(422);
      return resolve(result[0]);
    });
  });
}

