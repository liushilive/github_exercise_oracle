-- 创建用户
create user scott
  identified by "scott"
  default tablespace USERS
  profile DEFAULT;
-- 授予角色权限
grant connect to SCOTT;
grant resource to SCOTT;
-- 授予系统权限
grant create view to SCOTT;
grant unlimited tablespace to SCOTT;

-- 创建表
create table SCOTT.BONUS
(
  ENAME VARCHAR2(50),
  JOB   VARCHAR2(20),
  SAL   NUMBER,
  COMM  NUMBER
);

create table SCOTT.DEPT
(
  DEPTNO NUMBER(2) not null,
  DNAME  VARCHAR2(14),
  LOC    VARCHAR2(13)
);
alter table SCOTT.DEPT
  add constraint PK_DEPT primary key (DEPTNO);

create table SCOTT.EMP
(
  EMPNO    NUMBER(4) not null,
  ENAME    VARCHAR2(50),
  JOB      VARCHAR2(9),
  MGR      NUMBER(4),
  HIREDATE DATE,
  SAL      NUMBER(7,2),
  COMM     NUMBER(7,2),
  DEPTNO   NUMBER(2)
);
alter table SCOTT.EMP
  add constraint PK_EMP primary key (EMPNO);
alter table SCOTT.EMP
  add constraint FK_DEPTNO foreign key (DEPTNO)
  references SCOTT.DEPT (DEPTNO);

create table SCOTT.SALGRADE
(
  GRADE NUMBER,
  LOSAL NUMBER,
  HISAL NUMBER
);

-- 插入数据
insert into SCOTT.DEPT (DEPTNO, DNAME, LOC)
values (10, '会计', '纽约');

insert into SCOTT.DEPT (DEPTNO, DNAME, LOC)
values (20, '研发部', '达拉斯');

insert into SCOTT.DEPT (DEPTNO, DNAME, LOC)
values (30, '销售部', '芝加哥');

insert into SCOTT.DEPT (DEPTNO, DNAME, LOC)
values (40, '运营部', '波士顿');

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (8889, '王五', '普通员工', 7782, to_date('31-08-2017', 'dd-mm-yyyy'), 1230.00, null, null);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7369, 'SM中文', '普通员工', 7902, to_date('17-12-1980', 'dd-mm-yyyy'), 800.00, null, 20);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7499, 'ALLEN', '销售员', 7698, to_date('20-02-1981', 'dd-mm-yyyy'), 1602.00, 301.00, 30);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7521, 'WARD', '销售员', 7698, to_date('22-02-1981', 'dd-mm-yyyy'), 1250.00, 500.00, 30);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7566, 'JONES', '经理', 7839, to_date('02-04-1981', 'dd-mm-yyyy'), 2975.00, null, 20);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7654, 'MARTIN', '销售员', 7698, to_date('28-09-1981', 'dd-mm-yyyy'), 1250.00, 1400.00, 30);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7698, 'BLAKE', '经理', 7839, to_date('09-06-1981', 'dd-mm-yyyy'), 2850.00, null, 30);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7782, 'CLARK', '经理', 7839, to_date('09-06-1981', 'dd-mm-yyyy'), 2450.00, 1500.00, 10);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7788, 'SCOTT', '分析师', 7839, to_date('19-04-1987', 'dd-mm-yyyy'), 3000.00, null, 20);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7789, 'SCOTT', '分析师', 7566, to_date('20-04-1988', 'dd-mm-yyyy'), 5000.00, null, 10);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7839, 'KING', '董事长', null, to_date('17-11-1981', 'dd-mm-yyyy'), 5000.00, null, 10);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7840, 'KK', '董事长', null, to_date('17-11-1981', 'dd-mm-yyyy'), 5000.00, null, 20);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7841, 'WK', '分析师', null, to_date('17-11-1981', 'dd-mm-yyyy'), 5000.00, null, 30);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7844, 'TURNER', '销售员', 7698, to_date('08-09-1981', 'dd-mm-yyyy'), 1500.00, 10.00, 30);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7876, 'ADAMS', '普通员工', 7788, to_date('23-05-1987', 'dd-mm-yyyy'), 1100.00, null, 20);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7900, 'JAMES', '普通员工', 7698, to_date('03-12-2017', 'dd-mm-yyyy'), 950.00, null, 30);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7902, 'FORD', '分析师', 7566, to_date('03-12-2009', 'dd-mm-yyyy'), 3000.00, null, 20);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7934, 'MILLER', '普通员工', 7782, to_date('23-01-2000', 'dd-mm-yyyy'), 1300.00, null, 10);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (8888, '_LISI', '普通员工', 7782, to_date('02-04-2015', 'dd-mm-yyyy'), 1250.00, 1400.00, 30);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (8899, '刘%老师', '普通员工', 7782, to_date('02-04-2015', 'dd-mm-yyyy'), 1250.00, 1400.00, 30);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (8877, 'LISI', '普通员工', 7782, to_date('02-04-2015', 'dd-mm-yyyy'), 1250.00, 1400.00, 20);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (8890, 'Zhang', '普通员工', 7780, to_date('02-04-2006', 'dd-mm-yyyy'), 1250.00, 1400.00, 30);

insert into SCOTT.SALGRADE (GRADE, LOSAL, HISAL)
values (1, 700, 1200);

insert into SCOTT.SALGRADE (GRADE, LOSAL, HISAL)
values (2, 1201, 1400);

insert into SCOTT.SALGRADE (GRADE, LOSAL, HISAL)
values (3, 1401, 2000);

insert into SCOTT.SALGRADE (GRADE, LOSAL, HISAL)
values (4, 2001, 3000);

insert into SCOTT.SALGRADE (GRADE, LOSAL, HISAL)
values (5, 3001, 9999);

commit;

--创建表
create table SCOTT.STUDENT
(
  ID    NUMBER,
  NAME  VARCHAR2(50)
);

create table SCOTT.ACHIEVEMENT
(
  ID    NUMBER,
  MARK  NUMBER
);

create table SCOTT.USERORGZ
(
  ID            NUMBER,
  USERNAME      VARCHAR2(50),
  MOBILEPHONE   NUMBER
);

--插入数据
insert into SCOTT.STUDENT (ID, NAME)
values (1, 'Jack');

insert into SCOTT.STUDENT (ID, NAME)
values (2, 'Marry');

insert into SCOTT.STUDENT (ID, NAME)
values (3, 'Rose');

insert into SCOTT.STUDENT (ID, NAME)
values (4, 'Bob');

insert into SCOTT.STUDENT (ID, NAME)
values (5, 'John');

insert into SCOTT.STUDENT (ID, NAME)
values (6, 'Betty');

insert into SCOTT.STUDENT (ID, NAME)
values (7, 'Robert');

insert into SCOTT.STUDENT (ID, NAME)
values (8, 'Lisi');

insert into SCOTT.ACHIEVEMENT (ID, MARK)
values (1, 90);

insert into SCOTT.ACHIEVEMENT (ID, MARK)
values (2, 96);

insert into SCOTT.ACHIEVEMENT (ID, MARK)
values (3, 88);

insert into SCOTT.ACHIEVEMENT (ID, MARK)
values (4, 88);

insert into SCOTT.ACHIEVEMENT (ID, MARK)
values (5, 81);

insert into SCOTT.ACHIEVEMENT (ID, MARK)
values (6, 81);

insert into SCOTT.ACHIEVEMENT (ID, MARK)
values (8, 88);

insert into SCOTT.USERORGZ (ID, USERNAME, MOBILEPHONE)
values (1, '张三'， 13115152323);

insert into SCOTT.USERORGZ (ID, USERNAME, MOBILEPHONE)
values (2, '李四'， 13115152324);

insert into SCOTT.USERORGZ (ID, USERNAME, MOBILEPHONE)
values (3, '王五'， 13115152325);

insert into SCOTT.USERORGZ (ID, USERNAME, MOBILEPHONE)
values (4, '小球'， 13115152323);

insert into SCOTT.USERORGZ (ID, USERNAME, MOBILEPHONE)
values (5, '李小龙'， 13115152324);

insert into SCOTT.USERORGZ (ID, USERNAME, MOBILEPHONE)
values (6, '王思'， 13115152325);

insert into SCOTT.USERORGZ (ID, USERNAME, MOBILEPHONE)
values (7, '小王'， 13115152326);

insert into SCOTT.USERORGZ (ID, USERNAME, MOBILEPHONE)
values (8, '小四'， 13115152323);

insert into SCOTT.USERORGZ (ID, USERNAME, MOBILEPHONE)
values (9, '小三'， 13115152327);

insert into SCOTT.USERORGZ (ID, USERNAME, MOBILEPHONE)
values (10, '小二'， 13115152328);

commit;

select * from SCOTT.DEPT;
select * from SCOTT.EMP;
select * from SCOTT.SALGRADE;
select * from SCOTT.USERORGZ;
