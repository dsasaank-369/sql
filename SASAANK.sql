
--1.
create table pinfo(make varchar2(10),model varchar2(6),type varchar(2));
create table pc(model varchar2(6),speed number(5),ram number(3),hd number(2),cd number(2),price number(5));
create table laptop(model varchar2(8),speed number(5),ram number(3),hd number(3),screen number(6),price number(5));
create table printer(model varchar2(8),color varchar2(6),type varchar2(5),price number(5));

insert into pinfo values('&make','&model','&type');

insert into pc values('&model','&speed','&ram','&hd','&cd','&price');

insert into laptop values('&model','&speed','&ram','&hd','&screen','&price');

insert into printer values('&model','&color','&type','&price');

select * from pc;

insert into pc values('PC100','3','256','40','52','50000');

delete from pc where cd<50;

select * from pinfo;

UPDATE pinfo set make='IBM' where make='HCL';

UPDATE pinfo set make='WIPRO' where model='LP111';

UPDATE pc set ram=ram*2,hd=hd+10;

select * from Printer;

UPDATE printer set price=price-4000 where model='PR124';

--2.

desc pinfo;

alter table pinfo modify(type varchar2(10) not null);

alter table pc modify(speed default 2);

alter table pc modify hd number(5);

insert into pc(model,ram,hd,cd,price) values('PC136',512,100,68,90000);

alter table pinfo add constraint pipk primary key(model);

desc pc; 

alter table pc add constraint pcpk primary key(model);

commit;

desc laptop;

alter table laptop add constraint ltpk primary key(model);

alter table printer add constraint prpk primary key(model);

desc printer;

select table_name,constraint_name,constraint_type from user_constraints;

create table pc3(model varchar2(6),speed number(5),ram number(3),hd number(5),cd number(2),price number(5));

desc pc3;

insert into pc3 select * from pc;

drop table pc;

drop table pc1;

drop table pc3;

rename pc3 to pc;

desc pc;

create table pc3(model varchar2(6) NOT NULL,speed number(5),ram number(3),hd number(5),cd number(2),price number(5));

alter table pc add constraint pcfk foreign key(model) references pinfo(model);

alter table printer add constraint prfk foreign key(model) references pinfo(model);

alter table laptop add constraint ltfk foreign key(model) references pinfo(model);

select * from laptop;

delete from laptop;



select * from pinfo;

