create database inventory;
use inventory;

create table Users(
    id          int not null auto_increment,
    name        varchar(255) not null,
    email       varchar(255) not null,
    password    varchar(255) not null,
    primary key(id)
);

create table Products(
    id          int not null auto_increment,
    name        varchar(255) not null,
    description varchar(255) not null,
    price       float not null,
    created_by  int not null,
    primary key(id),
    foreign key(created_by) references Users(id)
);

create table Roles(
    id          int not null auto_increment,
    name        varchar(255) not null,
    primary key(id)
);

create table UserRoles(
    id          int not null auto_increment,
    user_id     int not null,
    role_id     int not null,
    primary key(id),
    foreign key(user_id) references Users(id),
    foreign key(role_id) references Roles(id)
);