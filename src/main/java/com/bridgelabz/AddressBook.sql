create database address_book;
use address_book;
create table address_book(id int not null primary key, First_name varchar(200), Last_name varchar(200), State varchar(200), City varchar(200), pin_code varchar(200), phonenumber varchar(200));
insert into address_book values (1, "Shubham", "Mishra", "UttarPradesh", "Lucknow", "211013", "9465766872");
insert into address_book values (2, "Tom", "Ben", "California", "San Jose", "394855", "5605707979");
select* from address_book;
//---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* UC-5 */
update address_book set State= "NewYork" where id=1;
/* Add record */
insert into address_book values(3, "Mike", "Tyson", "Arizona", "Arizona", "769594","8586-4984-48");
select* from address_book;
/* Delete record*/
delete from address_book where id=3;
select* from address_book;
/* Adding record*/
insert into address_book values(3, "Cristanio", "Ronaldo", "Portugal", "Portugalcity", "456868", "8675655856");
select* from address_book;
/* Deleting record*/
delete from address_book where id=2;
select* from address_book;
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* UC-6 */
select* from address_book where City="Lucknow";
select* from address_book where State="Arizona";
select*from address_book where  pin_code="211013";
/* UC-7 */
SELECT COUNT(First_name) FROM address_book WHERE City = "Lucknow";
SELECT COUNT(First_name) FROM address_book WHERE State = "Portugal";

/*UC-8 */
alter table address_book add address varchar(200);
update address_book set address="Beach Street" where id=1;
select*from address_book;
update address_book set address="River Side" where id=3;
select*from address_book;
-----------------------------------------------------------------------------------------------------------------------------------------------------------------
/* UC-9 */
update address_book set State="MP" where id=1;
select* from address_book where State="MP";
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* UC-10 */
select count(address) from address_book where id=1;
select count(address) from address_book where id=3;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* UC-11 */
insert into address_book values (2, "Virat", "Kohli", "New Delhi", "South Delhi", "110032", "9557656565", "Mountain View");
select*from address_book;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/* UC-12 */
CREATE TABLE person_info(personID INT PRIMARY KEY,First_name varchar(50),Last_name varchar(50),Address varchar(150),City varchar(30),Zip_code INT(10),State varchar(50),Phone_number INT(20),Email varchar(50));
show tables;
INSERT INTO person_info VALUES(1,'Bill','Gates','New-York','America','400008','US','1325485','bill-gates@gmail.com');
INSERT INTO person_info VALUES(2,'Shubham','Maxen','UP','Kanpur','561101','karnataka','9398359','mshubham@gmail.com');
INSERT INTO person_info VALUES(3,'Elon','Musk','Star-Base','America','400005','US','1845875','elon-musk@gmail.com');

CREATE TABLE person_type(type_ID INT PRIMARY KEY,type_name VARCHAR(50));
INSERT INTO person_type VALUES(10,'Profession');
INSERT INTO person_type VALUES(20,'Family');
INSERT INTO person_type VALUES(30,'Friend');
select * from person_type;
CREATE TABLE type(personID INT,FOREIGN KEY(personID) references person_info(personID),type_ID INT,FOREIGN KEY(type_ID) references person_type(type_ID));
INSERT INTO type VALUES(1,10);
INSERT INTO type VALUES(2,20);
INSERT INTO type VALUES(3,30);

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*UC-13 :-*/
SELECT * FROM person_info WHERE city = 'Kanpur' OR state = 'US';
SELECT COUNT(First_name) FROM person_info WHERE City = 'bangalore' OR State = 'US';
SELECT * FROM person_info ORDER BY City ASC;
SELECT COUNT(First_name) FROM address_book WHERE Type = 'Friends';