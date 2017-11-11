import mysql from 'mysql';


const db = mysql.createConnection({
  host: 'localhost',
  user: 'cs127',
  password: 'cs127',
  db: '6TenRRS',
  dateStrings: true
});

db.connect(err => {
  if (err) {
    console.log('Error in connecting to database');
    console.log(err);
  } else {
    console.log('Success in connecting to database');
  }
});

db.query('USE 6TenRRS');

export default db;

