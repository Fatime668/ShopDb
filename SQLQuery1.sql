create table Categories(
Id int primary key identity,
Name nvarchar(50) not null
)
create table Brands(
Id int primary key identity,
Name nvarchar(50) not null,
Categories_Id int foreign key references Categories(Id)
)
create table Markas(
Id int primary key identity,
Name nvarchar(50) not null,
Brands_Id int foreign key references Brands(Id)
)
create table Products(
Id int primary key identity,
Name nvarchar(50) not null,
Price int not null,
Image nvarchar(50) not null,
[Count] int not null,
Color nvarchar(20) not null,
Markas_Id int foreign key references Markas(Id)
)
select Sum(p.Price) from Products as p

select p.Price,p.Name,p.Image,p.Color,p.Count,m.Name from Products as p
join Markas as m
on p.Markas_Id = m.Id

