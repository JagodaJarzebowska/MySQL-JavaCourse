-- 2
use classicmodels;
-- 3
SHOW TABLES FROM classicmodels;
-- 4
DESCRIBE customers;
DESCRIBE employees;
DESCRIBE offices;
DESCRIBE orderdetails;
DESCRIBE payments;
DESCRIBE productlines;
DESCRIBE products;
-- 5
SELECT count(employeeNumber) as ilosc_pracownikow FROM employees;
SELECT * FROM employees;
-- 6
SELECT * FROM offices where country = 'usa';
-- 7 
SELECT * FROM customers WHERE state IS NULL;
-- 8
SELECT * FROM products ORDER BY buyPrice DESC LIMIT 5;
-- 9
SELECT * FROM products WHERE productName LIKE '%chevrolet%';
-- 10
SELECT productLine FROM productlines;
-- 11
use classicmodels;
SELECT productName, (MSRP - buyPrice) FROM products;
SELECT productName, buyPrice FROM products WHERE productName LIKE '%Harley%';
SELECT productName, buyPrice FROM products WHERE productName LIKE '%chevrolet%';

select productName, quantityInStock , Msrp ,quantityInStock*msrp as wartosc from products;
-- 12 
SELECT SUM(buyPrice*quantityInStock) AS sumaWszystkichProduktow FROM products;
-- 13 zle
SELECT * FROM products WHERE a;
SELECT productName, (MSRP - buyPrice) AS zysk FROM products ORDER BY zysk DESC LIMIT 1;
-- poprawka
SELECT  * FROM orderdetails;
SELECT sum(quantityOrdered*priceEach) AS zysk,  productCode FROM orderdetails group by productCode order by zysk DESC;
-- z uzyciem max
SELECT MAX(zysk), productCode FROM (SELECT sum(quantityOrdered*priceEach) AS zysk,  productCode FROM orderdetails group by productCode) AS wartosc;

-- 14 
SELECT productName, (MSRP - buyPrice) AS zysk FROM products ORDER BY zysk DESC LIMIT 5;
-- poprawka
SELECT sum(quantityOrdered*priceEach) AS zysk,  productCode FROM orderdetails group by productCode order by zysk DESC LIMIT 5;

-- 15  
SELECT count(*) as iloscWDanymMiescie, customerName, customerNumber FROM customers group by iloscWDanymMiescie ORDER  BY city ASC;
-- poprawka
SELECT count(*) as ilosc, city from customers group by city order by ilosc DESC limit 1;
SELECT MAX(ilosc), city FROM (SELECT count(*) as ilosc, city from customers group by city) as maks;

--  OD LUKASZA
SELECT COUNT(city) AS count, city FROM customers GROUP BY city
HAVING count = (SELECT 
        MAX(count)
    FROM
        (SELECT 
            COUNT(city) AS count, city
        FROM
            customers
        GROUP BY city
        ORDER BY count DESC) AS s);
-- 16 
SELECT creditLimit, customerName, customerNumber FROM customers ORDER BY creditLimit DESC LIMIT 1;
SELECT * FROM customers WHERE creditLimit = (SELECT MAX(creditLimit) FROM customers);
SELECT * FROM customers WHERE creditLimit = (SELECT MIN(creditLimit) FROM customers);
-- 17
use classicmodels;

SELECT customerName, checkNumber FROM customers JOIN payments ON customers.customerNumber = payments.customerNumber;
-- rozwiaznie
SELECT *, count(payments.checkNumber) as iloscZamowien FROM customers JOIN payments ON customers.customerNumber = payments.customerNumber group by customers.customerNumber order by iloscZamowien DESC LIMIT 1;
-- po numerach orderow kto najwiwcej zamowien
SELECT *, count(orders.orderNumber) as iloscZamowien FROM customers JOIN orders ON customers.customerNumber = orders.customerNumber group by customers.customerNumber order by iloscZamowien DESC LIMIT 1;
-- po numerach orderow kto najmnej zamowien
SELECT *, count(orders.orderNumber) as iloscZamowien FROM customers JOIN orders ON customers.customerNumber = orders.customerNumber group by customers.customerNumber order by iloscZamowien ASC;
-- z wykorzytsaniem maksa
SELECT max(iloscZamowien) FROM (SELECT count(orders.orderNumber) as iloscZamowien FROM customers JOIN orders ON customers.customerNumber = orders.customerNumber group by customers.customerNumber) AS A;
SELECT min(iloscZamowien) FROM (SELECT count(orders.orderNumber) as iloscZamowien FROM customers JOIN orders ON customers.customerNumber = orders.customerNumber group by customers.customerNumber) AS A;

-- pokazuje od ilosci = 1
SELECT *, count(payments.checkNumber) as iloscZamowien FROM customers JOIN payments ON customers.customerNumber = payments.customerNumber group by customers.customerNumber order by iloscZamowien ASC;

-- 18
SELECT *, count(payments.checkNumber) as iloscZamowien FROM customers JOIN payments ON customers.customerNumber = payments.customerNumber group by customers.customerNumber order by iloscZamowien DESC LIMIT 1;
SELECT customerName, checkNumber FROM customers JOIN payments ON customers.customerNumber = payments.customerNumber WHERE customerName LIKE '%+ Shopping Channel%';
SELECT customerName, orderNumber FROM customers JOIN orders ON customers.customerNumber = orders.customerNumber WHERE customerName LIKE '%+ Shopping Channel%';
SELECT customerName, orderNumber FROM customers JOIN orders ON customers.customerNumber = orders.customerNumber WHERE (SELECT max(iloscZamowien) FROM (SELECT count(orders.orderNumber) as iloscZamowien FROM customers JOIN orders ON customers.customerNumber = orders.customerNumber group by customers.customerNumber) AS A);
-- od lukasza
SELECT * FROM orders WHERE customerNumber = (SELECT customerNumber FROM (SELECT customerNumber, COUNT(*) AS max
            FROM orders GROUP BY customerNumber HAVING max = (SELECT MAX(ilosc) max
                FROM(SELECT customerNumber, COUNT(*) AS ilosc FROM orders GROUP BY customerNumber) AS t)) AS u);

-- 19
USE classicmodels;
SELECT * FROM orderdetails;
SELECT employees.employeeNumber, employees.firstName, employees.lastName, count(*) AS iloscZamowien FROM employees
JOIN customers ON customers.salesRepEmployeeNumber = employees.employeeNumber
JOIN orders ON orders.customerNumber = customers.customerNumber
group by employees.employeeNumber order by iloscZamowien; 
-- 20

-- 21
SELECT employees1.firstName, employees1.lastName, employees2.firstName, employees2.lastName FROM employees employees2
JOIN employees employees1 ON employees2.employeeNumber = employees1.reportsTo;
-- 22*

-- 23*

-- 24
SELECT employees.firstName, employees.lastName, SUM(payments.amount) AS wartoscZamowien FROM employees
JOIN customers ON customers.salesRepEmployeeNumber = employees.employeeNumber
JOIN payments ON payments.customerNumber = customers.customerNumber
group by employees.firstName order by wartoscZamowien;
-- 25
CREATE VIEW emplView AS SELECT employeeNumber, firstName, lastName, email, city, phone, state, postalCode, country FROM employees , offices;  
CREATE VIEW emplView2 AS SELECT employeeNumber, firstName, lastName, email, city, phone, state, postalCode, country FROM employees natural join offices;  
SELECT * FROM emplView;
SELECT * FROM emplView2;
-- 26 
SELECT * FROM emplView2 WHERE city = 'San Francisco';
-- 27
ALTER TABLE employees ADD hireDate timestamp DEFAULT current_timestamp;
SELECT * FROM employees;
-- 28
INSERT INTO employees VALUES (1703, 'Jarzebowska', 'Jagoda', 'x102', 'jagoda@o.pl', '5', 1102, 'Sales Rep', null);
-- 29
SELECT * FROM customers;
INSERT INTO customers VALUES(497, 'Jagoda Company', 'Jarzebowska', 'Jagoda', '+48 511232258', 'Sobieskiego 14', null, 'Bydgoszcz', null, '87125', 'Poland', null, 5000.00);
SELECT * FROM orders group by orderNumber DESC;
INSERT INTO orders VALUES(10500, '2018-05-02', '2018-05-10', '2018-05-05', 'Shipped', null,497);
SELECT * FROM orderdetails GROUP BY orderNumber DESC;
INSERT INTO orderdetails VALUES(10500, 'S24_2000', 5, 61.70, 3);
-- 30
SELECT productlines.productLine, COUNT(*) AS iloscSprzedanychProduktow FROM productlines
JOIN products ON products.productLine = productlines.productLine
JOIN orderdetails ON orderdetails.productCode = products.productCode
JOIN orders ON orders.orderNumber = orderdetails.orderNumber
group by productlines.productLine LIMIT 3;
-- 31
SELECT * FROM orders WHERE orderDate  LIKE '2005-01%';
-- 32
SELECT SUM(priceEach) FROM orders JOIN orderdetails ON orderdetails.orderNumber = orders.orderNumber WHERE orderDate  LIKE '2005-01%';
-- 33
SELECT offices.officeCode, offices.city,offi
ces.country, SUM(payments.amount) AS suma FROM offices
JOIN employees ON employees.officeCode = offices.officeCode
JOIN customers ON customers.salesRepEmployeeNumber = employees.employeeNumber
JOIN payments ON payments.customerNumber = customers.customerNumber
group by offices.officeCode having suma >= ALL
(
    select  SUM(payments.amount)  from offices 
    join employees on employees.officeCode = offices.officeCode
    join customers on customers.salesRepEmployeeNumber = employees.employeeNumber
    join payments on payments.customerNumber = customers.customerNumber
    group by offices.officeCode
);

-- 34 najwieksza ilosc zamowien
SELECT MAX(sumaZamowien) FROM (SELECT count(orders.orderNumber) AS sumaZamowien FROM customers
JOIN orders ON orders.customerNumber = customers.customerNumber
GROUP by customers.city) AS A;
-- 5 miast z których klienci składają najwięcej zamówień
SELECT count(orders.orderNumber) AS sumaZamowien, city FROM customers
JOIN orders ON orders.customerNumber = customers.customerNumber
group By customers.city order by sumaZamowien DESC LIMIT 5;

-- 35  5 miast z których klienci wydają najwięcej
SELECT customers.customerNumber, customers.customerName, customers.city, SUM(payments.amount) AS suma FROM customers
JOIN payments ON payments.customerNumber = customers.customerNumber
group by customers.city order by suma DESC LIMIT 5;

-- 36
SELECT count(orders.orderDate) AS iloscZamowien, orderDate FROM orders
group by orders.orderDate order by iloscZamowien DESC LIMIT 1;
