create table anigroup (
groupid varchar(3) primary key,
name varchar(20));

create table animember (
email varchar2(30) primary key,
pass varchar(10),
nicname varchar(20),
brithday date,
regdate date);

create table myanimal (
ser  int primary key,
email varchar(100),
groupid varchar(100),
neuter varchar(100),
name varchar(100),
age int,
gender varchar(100),
picture varchar(100));

create sequence boardseq;