<h1 align="center"></br>6-Ten Rewards Record System </br>
	<img src="https://img.shields.io/badge/status-development-yellow.svg" />
</h1>
</br>
<h4 align="center">CMSC 127 Project </br> A record system allows us to record, in electronic form, any transaction done by a customer with 6-Ten Rewards card.
</h4>

# Installation
1. Install [NodeJS](https://nodejs.org/en/download/) and MariaDB.
2. Install latest version of [Yarn](https://yarnpkg.com/en/docs/install#alternatives-tab) or with `npm install yarn -g`.
3. Install dependencies with `yarn install`.
4. Load database schema `yarn run seed`.

## Start
1. Start the server with `yarn start`.
2. Access the api through `http://localhost:3001/api/<route>`.



## Tables 

### `USER`

| Field    | Type         | Null | Key | Default | Extra          |
|----------|--------------|------|-----|---------|----------------|
| id       | int(11)      | NO   | PRI | NULL    | auto_increment |
| username | varchar(255) | NO   |     | NULL    |                |
| password | varchar(255) | NO   |     | NULL    |                |


### `CUSTOMER`

| Field      | Type         | Null | Key | Default | Extra          |
|------------|--------------|------|-----|---------|----------------|
| CustomerID | int(11)      | NO   | PRI | NULL    | auto_increment |
| Name       | varchar(255) | NO   |     | NULL    |                |
| Address    | varchar(255) | NO   |     | NULL    |                |
| ContactNum | varchar(11)  | NO   |     | NULL    |                |
| Birthday   | date         | NO   |     | NULL    |                |
| Age        | int(11)      | NO   |     | NULL    |                |


### `BRANCH`

| Field          | Type         | Null | Key | Default | Extra          |
|----------------|--------------|------|-----|---------|----------------|
| BranchID       | int(11)      | NO   | PRI | NULL    | auto_increment |
| BranchLocation | varchar(255) | NO   |     | NULL    |                |
| BranchManager  | varchar(255) | NO   |     | NULL    |                |


### `PRODUCT`

| Field      | Type         | Null | Key | Default | Extra          |
|------------|--------------|------|-----|---------|----------------|
| ProdID     | int(11)      | NO   | PRI | NULL    | auto_increment |
| ProdName   | varchar(255) | NO   |     | NULL    |                |
| ProdPoints | int(11)      | NO   |     | NULL    |                |
| Price      | int(11)      | NO   |     | NULL    |                |


### `PROMO`

| Field         | Type    | Null | Key | Default | Extra          |
|---------------|---------|------|-----|---------|----------------|
| PromoID       | int(11) | NO   | PRI | NULL    | auto_increment |
| StarsEarnable | int(11) | NO   |     | NULL    |                |
| StarsNeeded   | int(11) | NO   |     | NULL    |                |
| ExprDate      | date    | NO   |     | NULL    |                |
| ProductID     | int(11) | NO   | MUL | NULL    |                |


### `PROMOSTAR`

| Field       | Type     | Null | Key | Default | Extra          |
|-------------|----------|------|-----|---------|----------------|
| PromoStarID | int(11)  | NO   | PRI | NULL    | auto_increment |
| Starsval    | int(11)  | NO   |     | NULL    |                |
| DateUsed    | datetime | YES  |     | NULL    |                |
| DateEarned  | datetime | NO   |     | NULL    |                |
| ExprDate    | date     | NO   |     | NULL    |                |
| CustomerId  | int(11)  | NO   | MUL | NULL    |                |
| PromoId     | int(11)  | NO   | MUL | NULL    |                |


### `REWARD`

| Field      | Type     | Null | Key | Default | Extra          |
|------------|----------|------|-----|---------|----------------|
| RewardID   | int(11)  | NO   | PRI | NULL    | auto_increment |
| Points     | int(11)  | NO   |     | NULL    |                |
| DateUsed   | datetime | YES  |     | NULL    |                |
| DateEarned | datetime | NO   |     | NULL    |                |
| CustomerId | int(11)  | NO   | MUL | NULL    |                |


### `STOCK`

| Field      | Type    | Null | Key | Default | Extra          |
|------------|---------|------|-----|---------|----------------|
| StockID    | int(11) | NO   | PRI | NULL    | auto_increment |
| Product_id | int(11) | NO   | MUL | NULL    |                |
| Branch_id  | int(11) | NO   | MUL | NULL    |                |
| Quantity   | int(11) | NO   |     | NULL    |                |


### `TRANSACTION`

| Field        | Type                  | Null | Key | Default | Extra          |
|--------------|-----------------------|------|-----|---------|----------------|
| TransID      | int(11)               | NO   | PRI | NULL    | auto_increment |
| Payment_amt  | int(11)               | NO   |     | NULL    |                |
| Payment_type | enum('PESO','POINTS') | NO   |     | NULL    |                |
| TransDesc    | varchar(255)          | NO   |     | NULL    |                |
| DateCreated  | datetime              | NO   |     | NULL    |                |
| DateUpdated  | datetime              | NO   |     | NULL    |                |
| CustomerId   | int(11)               | NO   | MUL | NULL    |                |
| BranchId     | int(11)               | NO   | MUL | NULL    |                |


## Developers
* Evangelista, Erlen Mae S.
* Magnaye, Aaron V.