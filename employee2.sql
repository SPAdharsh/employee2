use employee2;
Create Table employee (empid int,name char(10),age int,sex char(8),
foreign key(empid) references employeedetails(empid));

Create Table employeedetails (empid int primary key,salary int,place varchar(15));

Insert Into employee(empid,name,age,sex) 
values(1,"Ram",34,"male"),(2,"Renu",28,"female"),
(1,"Sinu",30,"male"),(3,"Mini",37,"female");

Insert Into employyedetails(empid,salary,place)
values(1,50000,"London"),(2,45000,"Paris"),(3,30000,"Sydeny");

Select * From employee as e1 Where Exists
(Select * From employeedetails as e2
 Where e2.empid=e1.id);
 
Select * From employee as e1 Where not Exists
( Select * From employeedetails as e2
  Where e2.empid=e1.id);


