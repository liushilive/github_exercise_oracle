-- �����û�
create user scott
    identified by "scott";
-- �����ɫȨ��
grant connect to scott;
grant resource to scott;
-- ����ϵͳȨ��
grant create view to scott;
grant unlimited tablespace to scott;

-- ������
create table scott.bonus
(
    ename varchar2(50),
    job   varchar2(20),
    sal   number,
    comm  number
);

create table scott.dept
(
    deptno number(2) primary key,
    dname  varchar2(14),
    loc    varchar2(13)
);

create table scott.emp
(
    empno    number(4) primary key,
    ename    varchar2(50),
    job      varchar2(20),
    mgr      number(4),
    hiredate date,
    sal      number(7, 2),
    comm     number(7, 2),
    deptno   number(2)
);
alter table scott.emp
    add constraint fk_deptno foreign key (deptno)
        references scott.dept (deptno);

create table scott.salgrade
(
    grade number,
    losal number,
    hisal number
);

create table scott.student
(
    id   number,
    name varchar2(50)
);

create table scott.achievement
(
    id   number,
    mark number
);

create table scott.userorgz
(
    id          number,
    username    varchar2(50),
    mobilephone number
);

create table scott.stock
(
    mc varchar2(50),
    zl number
);

create table scott.sales
(
    mc varchar2(50),
    sl number
);

create table scott.a
(
    �·� char(12),
    ���� char(2),
    ҵ�� number
);

-- ��������
insert into scott.dept (deptno, dname, loc)
values (10, '���', 'ŦԼ');

insert into scott.dept (deptno, dname, loc)
values (20, '�з���', '����˹');

insert into scott.dept (deptno, dname, loc)
values (30, '���۲�', '֥�Ӹ�');

insert into scott.dept (deptno, dname, loc)
values (40, '��Ӫ��', '��ʿ��');

insert into scott.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (8889, '����', '��ͨԱ��', 7782, to_date('31-08-2017', 'dd-mm-yyyy'), 1230.00, null, null);

insert into scott.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7369, 'SM����', '��ͨԱ��', 7902, to_date('17-12-1980', 'dd-mm-yyyy'), 800.00, null, 20);

insert into scott.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7499, 'ALLEN', '����Ա', 7698, to_date('20-02-1981', 'dd-mm-yyyy'), 1602.00, 301.00, 30);

insert into scott.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7521, 'WARD', '����Ա', 7698, to_date('22-02-1981', 'dd-mm-yyyy'), 1250.00, 500.00, 30);

insert into scott.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7566, 'JONES', '����', 7839, to_date('02-04-1981', 'dd-mm-yyyy'), 2975.00, null, 20);

insert into scott.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7654, 'MARTIN', '����Ա', 7698, to_date('28-09-1981', 'dd-mm-yyyy'), 1250.00, 1400.00, 30);

insert into scott.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7698, 'BLAKE', '����', 7839, to_date('09-06-1981', 'dd-mm-yyyy'), 2850.00, null, 30);

insert into scott.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7782, 'CLARK', '����', 7839, to_date('09-06-1981', 'dd-mm-yyyy'), 2450.00, 1500.00, 10);

insert into scott.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7788, 'SCOTT', '����ʦ', 7839, to_date('19-04-1987', 'dd-mm-yyyy'), 3000.00, null, 20);

insert into scott.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7789, 'SCOTT', '����ʦ', 7566, to_date('20-04-1988', 'dd-mm-yyyy'), 5000.00, null, 10);

insert into scott.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7839, 'KING', '���³�', null, to_date('17-11-1981', 'dd-mm-yyyy'), 5000.00, null, 10);

insert into scott.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7840, 'KK', '���³�', null, to_date('17-11-1981', 'dd-mm-yyyy'), 5000.00, null, 20);

insert into scott.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7841, 'WK', '����ʦ', null, to_date('17-11-1981', 'dd-mm-yyyy'), 5000.00, null, 30);

insert into scott.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7844, 'TURNER', '����Ա', 7698, to_date('08-09-1981', 'dd-mm-yyyy'), 1500.00, 10.00, 30);

insert into scott.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7876, 'ADAMS', '��ͨԱ��', 7788, to_date('23-05-1987', 'dd-mm-yyyy'), 1100.00, null, 20);

insert into scott.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7900, 'JAMES', '��ͨԱ��', 7698, to_date('03-12-2017', 'dd-mm-yyyy'), 950.00, null, 30);

insert into scott.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7902, 'FORD', '����ʦ', 7566, to_date('03-12-2009', 'dd-mm-yyyy'), 3000.00, null, 20);

insert into scott.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (7934, 'MILLER', '��ͨԱ��', 7782, to_date('23-01-2000', 'dd-mm-yyyy'), 1300.00, null, 10);

insert into scott.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (8888, '_LISI', '��ͨԱ��', 7782, to_date('02-04-2015', 'dd-mm-yyyy'), 1250.00, 1400.00, 30);

insert into scott.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (8899, '��%��ʦ', '��ͨԱ��', 7782, to_date('02-04-2015', 'dd-mm-yyyy'), 1250.00, 1400.00, 30);

insert into scott.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (8877, 'LISI', '��ͨԱ��', 7782, to_date('02-04-2015', 'dd-mm-yyyy'), 1250.00, 1400.00, 20);

insert into scott.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)
values (8890, 'Zhang', '��ͨԱ��', 7780, to_date('02-04-2006', 'dd-mm-yyyy'), 1250.00, 1400.00, 30);

insert into scott.salgrade (grade, losal, hisal)
values (1, 700, 1200);

insert into scott.salgrade (grade, losal, hisal)
values (2, 1201, 1400);

insert into scott.salgrade (grade, losal, hisal)
values (3, 1401, 2000);

insert into scott.salgrade (grade, losal, hisal)
values (4, 2001, 3000);

insert into scott.salgrade (grade, losal, hisal)
values (5, 3001, 9999);

insert into scott.student (id, name)
values (1, 'Jack');

insert into scott.student (id, name)
values (2, 'Marry');

insert into scott.student (id, name)
values (3, 'Rose');

insert into scott.student (id, name)
values (4, 'Bob');

insert into scott.student (id, name)
values (5, 'John');

insert into scott.student (id, name)
values (6, 'Betty');

insert into scott.student (id, name)
values (7, 'Robert');

insert into scott.student (id, name)
values (8, 'Lisi');

insert into scott.achievement (id, mark)
values (1, 90);

insert into scott.achievement (id, mark)
values (2, 96);

insert into scott.achievement (id, mark)
values (3, 88);

insert into scott.achievement (id, mark)
values (4, 88);

insert into scott.achievement (id, mark)
values (5, 81);

insert into scott.achievement (id, mark)
values (6, 81);

insert into scott.achievement (id, mark)
values (8, 88);

insert into scott.userorgz (id, username, mobilephone)
values (1, '����', 13115152323);

insert into scott.userorgz (id, username, mobilephone)
values (2, '����', 13115152324);

insert into scott.userorgz (id, username, mobilephone)
values (3, '����', 13115152325);

insert into scott.userorgz (id, username, mobilephone)
values (4, 'С��', 13115152323);

insert into scott.userorgz (id, username, mobilephone)
values (5, '��С��', 13115152324);

insert into scott.userorgz (id, username, mobilephone)
values (6, '��˼', 13115152325);

insert into scott.userorgz (id, username, mobilephone)
values (7, 'С��', 13115152326);

insert into scott.userorgz (id, username, mobilephone)
values (8, 'С��', 13115152323);

insert into scott.userorgz (id, username, mobilephone)
values (9, 'С��', 13115152327);

insert into scott.userorgz (id, username, mobilephone)
values (10, 'С��', 13115152328);


insert into scott.stock (mc, zl)
values ('A', 100);

insert into scott.stock (mc, zl)
values ('B', 150);

insert into scott.sales (mc, sl)
values ('A', 10);

insert into scott.sales (mc, sl)
values ('A', 20);

insert into scott.sales (mc, sl)
values ('B', 10);

insert into scott.sales (mc, sl)
values ('B', 20);

insert into scott.sales (mc, sl)
values ('B', 30);

insert into scott.a
values ('һ�·�', 'A', 10);

insert into scott.a
values ('һ�·�', 'B', 10);

insert into scott.a
values ('һ�·�', 'C', 5);

insert into scott.a
values ('���·�', 'A', 8);

insert into scott.a
values ('���·�', 'B', 9);

insert into scott.a
values ('���·�', 'A', 8);

commit;

select *
from scott.a;

select *
from scott.achievement;

select *
from scott.bonus;

select *
from scott.student;

select *
from scott.salgrade;

select *
from scott.userorgz;

select *
from scott.stock;

select *
from scott.sales;

select *
from scott.dept;

select *
from scott.emp;
