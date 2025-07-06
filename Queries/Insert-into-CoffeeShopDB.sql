
-- Insert sample data into all tables
INSERT INTO CoffeeShoptable VALUES ('123456789','Stars coffee','Rabigh','AlSamd','25753')
SELECT * FROM CoffeeShoptable

INSERT INTO Product_Type VALUES('10000','Hot_coffee')
INSERT INTO Product_Type VALUES('20000','Cold_coffee')
INSERT INTO Product_Type VALUES('30000','Teas')
INSERT INTO Product_Type VALUES('40000','Juices')
INSERT INTO Product_Type VALUES('50000','Waffles')
INSERT INTO Product_Type VALUES('60000','Pancakes')
INSERT INTO Product_Type VALUES('70000','Cakes')
SELECT * FROM Product_Type

INSERT INTO Customers VALUES('586414125','Ahmed','khaled','Almutairi','Rabigh','Alsilayyib','25754','123456789')
INSERT INTO Customers VALUES('723356421','Rahef','Bander','Alyoubi','Rabigh','Alsubah','25754','123456789')
INSERT INTO Customers VALUES('023750374','Sarah','Fhed','Almutari','Rabigh','Alsamad','25729','123456789')
INSERT INTO Customers VALUES('274620713','AbdAlaziz','Rayan','Albladi','Rabigh','Farnisiyah','25753','123456789')
INSERT INTO Customers VALUES('093846191','Rakan','Mohammed','aljuhani','Rabigh','Alsilayyib','25766','123456789')
INSERT INTO Customers VALUES('387560134','Aljori','AbdAllah','aloslani','Rabigh','Alsubah','25754','123456789')
INSERT INTO Customers VALUES('329843002','Reham','khaled','Alghamdi','Rabigh','Alsamad','25729','123456789')
SELECT * FROM Customers


INSERT INTO CoffeeProducts VALUES('10001','Latte','10000',4.25,'123456789')
INSERT INTO CoffeeProducts VALUES('10002','Mocha','10000',5.75,'123456789')
INSERT INTO CoffeeProducts VALUES('10003','Hot_Chocolate','10000',6.00,'123456789')
INSERT INTO CoffeeProducts VALUES('20001','Iced_Latte','20000',4.25,'123456789')
INSERT INTO CoffeeProducts VALUES('20002','Iced_Mocha','20000',5.75,'123456789')
INSERT INTO CoffeeProducts VALUES('30001','Black_Tea','30000',3.25,'123456789')
INSERT INTO CoffeeProducts VALUES('30002','Green_Tea','30000',3.25,'123456789')
INSERT INTO CoffeeProducts VALUES('40001','Avocado','40000',6.00,'123456789')
INSERT INTO CoffeeProducts VALUES('40002','Orange','40000',5.50,'123456789')
INSERT INTO CoffeeProducts VALUES('40003','Mango','40000',7.50,'123456789')
INSERT INTO CoffeeProducts VALUES('50001','Black_Waffle','50000',10.00,'123456789')
INSERT INTO CoffeeProducts VALUES('50002','Golden_Waffle','50000',8.00,'123456789')
INSERT INTO CoffeeProducts VALUES('60001','Pancake','60000',6.00,'123456789')
INSERT INTO CoffeeProducts VALUES('60002','Yogurt_Pancake','60000',5.50,'123456789')
INSERT INTO CoffeeProducts VALUES('70001','Muffen','70000',9.20,'123456789')
SELECT * FROM CoffeeProducts;


INSERT INTO Bills VALUES ('24875','586414125','Ahmed','30001','Black_Tea', '2022-4-25','2',6.50,'123456789');
INSERT INTO Bills VALUES ('24876','723356421','Rahef','50002','Golden_Waffle', '2022-4-25','3',16.00,'123456789');
INSERT INTO Bills VALUES ('24877','023750374','Sarah','20001','Iced_Latte', '2022-4-26','1',4.25,'123456789');
INSERT INTO Bills VALUES ('24878','274620713','AbdAlaziz','40002','Orange','2022-4-26','1',5.50,'123456789');
INSERT INTO Bills VALUES ('24879','093846191','Rakan','70001','Muffen','2022-4-26','2',18.40,'123456789');
INSERT INTO Bills VALUES ('24880','387560134','Aljori','10003','Hot_Chocolate', '2022-4-27','1',6.00,'123456789');
INSERT INTO Bills VALUES ('24881','329843002','Reham','60002','Yogurt_Pancake','2022-4-28','4',22.00,'123456789');
Select * from Bills;

INSERT INTO Employees VALUES ('122334597','Adam','Sami','aloslani', '2004-03-29','M','Rabigh','AlSamad','25753','5000','123456789')
INSERT INTO Employees VALUES ('765433221','Rayan','Mohammed','aljuhani','1998-12-09','M','Rabigh','AlSamad','25753','6000','123456789')
INSERT INTO Employees VALUES ('658679001','Osamah','Adham','Almutairi','1999-07-01','M','Rabigh','AlSamad','25753','6500','123456789')
INSERT INTO Employees VALUES ('809975324','Yousef','Ali','aloslani', '1992-05-22','M','Rabigh','AlSamad','25753','5500','123456789')
INSERT INTO Employees VALUES ('223478117','Elias','Adel','Alghamdi', '2000-04-17','M','Rabigh','AlSamad','25753','5400','123456789')
INSERT INTO Employees VALUES ('474822153','Hatan','Anas','Almutairi', '2004-03-25','M','Rabigh','AlSamad','25753','5500','123456789')
INSERT INTO Employees VALUES ('323456771','Hassen','Hassen','Albladi', '2002-11-23','M','Rabigh','AlSamad','25753','5000','123456789')
SELECT * FROM Employees;


INSERT INTO Dependents VALUES ('122334597','Asia','F','2007-12-10','Sister')
INSERT INTO Dependents VALUES ('765433221','Ella','F','2003-09-28','Sister')
INSERT INTO Dependents VALUES ('658679001','Adnan','M','2000-03-10','Brother')
INSERT INTO Dependents VALUES ('809975324','Ameer','M','1988-11-10','Father')
INSERT INTO Dependents VALUES ('223478117','Wafaa','F','1989-09-15','Mother')
INSERT INTO Dependents VALUES ('474822153','Hessah','F','2003-06-10','Sister')
INSERT INTO Dependents VALUES ('323456771','Batool','F','1999-02-22','Sister')
SELECT * FROM Dependents;


INSERT INTO Suppliers VALUES ('345672239','Elle','Sam','Goerge','10001','London','Oxford Street','05211','100','123456789');
INSERT INTO Suppliers VALUES ('215123785','Sofia','Mattia','Alessandro','10002','Rome','Via del Corso','00133','100','123456789');
INSERT INTO Suppliers VALUES ('678945672','Nur','Muhammad','Budi','10003','jakarta','Braga Street','10230','100','123456789');
INSERT INTO Suppliers VALUES ('785634857','Chenguang','Li','Yong','30001','Beijing','Silver Street','65402','100','123456789');
INSERT INTO Suppliers VALUES ('987234652','Gabriel','Antonio','Lucas','40001','Bras?lia','Paulista Avenue','69935','500','123456789');
INSERT INTO Suppliers VALUES ('657483290','Noah','Arthur','Louis','50001','Brussels','Rue du Bailli','01020','10','123456789');
INSERT INTO Suppliers VALUES ('302654378','Sakura','Asahi','Takashi','60001','Tokyo','Sakuradori','00105','10','123456789');
INSERT INTO Suppliers VALUES ('417065431','Samuel','Thomas','Bath','70001','NewYork','Wall Street','10023','10','123456789');
SELECT * FROM Suppliers;

INSERT INTO Contain VALUES ('30001','24876')
INSERT INTO Contain VALUES ('50002','24876')
INSERT INTO Contain VALUES ('20001','24877')
INSERT INTO Contain VALUES ('40002','24878')
INSERT INTO Contain VALUES ('70001','24879')
INSERT INTO Contain VALUES ('10003','24880')
INSERT INTO Contain VALUES ('60002','24881')
SELECT * FROM Contain;

INSERT INTO Buys VALUES ('586414125', '30001')
INSERT INTO Buys VALUES ('723356421', '50002')
INSERT INTO Buys VALUES ('023750374', '20001')
INSERT INTO Buys VALUES ('274620713', '40002')
INSERT INTO Buys VALUES ('093846191', '70001')
INSERT INTO Buys VALUES ('387560134', '10003')
INSERT INTO Buys VALUES ('329843002', '60002')
SELECT * FROM Buys;

INSERT INTO Take_Order VALUES ('122334597','586414125')
INSERT INTO Take_Order VALUES ('765433221','723356421')
INSERT INTO Take_Order VALUES ('658679001','023750374')
INSERT INTO Take_Order VALUES ('809975324','274620713')
INSERT INTO Take_Order VALUES ('223478117','093846191')
INSERT INTO Take_Order VALUES ('474822153','387560134')
INSERT INTO Take_Order VALUES ('323456771','329843002')
SELECT * FROM Take_Order;

INSERT INTO Make VALUES ('122334597','10001');
INSERT INTO Make VALUES ('765433221','20001');
INSERT INTO Make VALUES ('658679001','30001');
INSERT INTO Make VALUES ('809975324','40001');
INSERT INTO Make VALUES ('223478117','50001');
INSERT INTO Make VALUES ('474822153','60001');
INSERT INTO Make VALUES ('323456771','70001');
SELECT * FROM Make;

INSERT INTO Prints VALUES ('122334597','24875')
INSERT INTO Prints VALUES ('765433221','24876')
INSERT INTO Prints VALUES ('658679001','24877')
INSERT INTO Prints VALUES ('809975324','24878')
INSERT INTO Prints VALUES ('223478117','24879')
INSERT INTO Prints VALUES ('474822153','24880')
INSERT INTO Prints VALUES ('323456771','24881')
SELECT * FROM Prints;


INSERT INTO Phone_Number VALUES ('0113584783','123456789')
INSERT INTO Phone_Number VALUES ('0116284756','123456789')
INSERT INTO Phone_Number VALUES ('0112736452','123456789')
INSERT INTO Phone_Number VALUES ('0117465393','123456789')
INSERT INTO Phone_Number VALUES ('0112384643','123456789')
INSERT INTO Phone_Number VALUES ('0117358394','123456789')
INSERT INTO Phone_Number VALUES ('0118469386','123456789')
SELECT * FROM Phone_Number;
