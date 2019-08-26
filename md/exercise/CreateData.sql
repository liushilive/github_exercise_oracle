-- �����û�
create user scott
  identified by "scott"
  default tablespace USERS
  profile DEFAULT;
-- �����ɫȨ��
grant connect to SCOTT;
grant resource to SCOTT;
-- ����ϵͳȨ��
grant create view to SCOTT;
grant unlimited tablespace to SCOTT;

-- ������
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

-- ��������
insert into SCOTT.DEPT (DEPTNO, DNAME, LOC)
values (10, '���', 'ŦԼ');

insert into SCOTT.DEPT (DEPTNO, DNAME, LOC)
values (20, '�з���', '����˹');

insert into SCOTT.DEPT (DEPTNO, DNAME, LOC)
values (30, '���۲�', '֥�Ӹ�');

insert into SCOTT.DEPT (DEPTNO, DNAME, LOC)
values (40, '��Ӫ��', '��ʿ��');

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (8889, '����', '��ͨԱ��', 7782, to_date('31-08-2017', 'dd-mm-yyyy'), 1230.00, null, null);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7369, 'SM����', '��ͨԱ��', 7902, to_date('17-12-1980', 'dd-mm-yyyy'), 800.00, null, 20);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7499, 'ALLEN', '����Ա', 7698, to_date('20-02-1981', 'dd-mm-yyyy'), 1602.00, 301.00, 30);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7521, 'WARD', '����Ա', 7698, to_date('22-02-1981', 'dd-mm-yyyy'), 1250.00, 500.00, 30);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7566, 'JONES', '����', 7839, to_date('02-04-1981', 'dd-mm-yyyy'), 2975.00, null, 20);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7654, 'MARTIN', '����Ա', 7698, to_date('28-09-1981', 'dd-mm-yyyy'), 1250.00, 1400.00, 30);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7698, 'BLAKE', '����', 7839, to_date('09-06-1981', 'dd-mm-yyyy'), 2850.00, null, 30);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7782, 'CLARK', '����', 7839, to_date('09-06-1981', 'dd-mm-yyyy'), 2450.00, 1500.00, 10);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7788, 'SCOTT', '����ʦ', 7839, to_date('19-04-1987', 'dd-mm-yyyy'), 3000.00, null, 20);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7789, 'SCOTT', '����ʦ', 7566, to_date('20-04-1988', 'dd-mm-yyyy'), 5000.00, null, 10);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7839, 'KING', '���³�', null, to_date('17-11-1981', 'dd-mm-yyyy'), 5000.00, null, 10);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7840, 'KK', '���³�', null, to_date('17-11-1981', 'dd-mm-yyyy'), 5000.00, null, 20);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7841, 'WK', '����ʦ', null, to_date('17-11-1981', 'dd-mm-yyyy'), 5000.00, null, 30);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7844, 'TURNER', '����Ա', 7698, to_date('08-09-1981', 'dd-mm-yyyy'), 1500.00, 10.00, 30);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7876, 'ADAMS', '��ͨԱ��', 7788, to_date('23-05-1987', 'dd-mm-yyyy'), 1100.00, null, 20);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7900, 'JAMES', '��ͨԱ��', 7698, to_date('03-12-2017', 'dd-mm-yyyy'), 950.00, null, 30);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7902, 'FORD', '����ʦ', 7566, to_date('03-12-2009', 'dd-mm-yyyy'), 3000.00, null, 20);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (7934, 'MILLER', '��ͨԱ��', 7782, to_date('23-01-2000', 'dd-mm-yyyy'), 1300.00, null, 10);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (8888, '_LISI', '��ͨԱ��', 7782, to_date('02-04-2015', 'dd-mm-yyyy'), 1250.00, 1400.00, 30);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (8899, '��%��ʦ', '��ͨԱ��', 7782, to_date('02-04-2015', 'dd-mm-yyyy'), 1250.00, 1400.00, 30);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (8877, 'LISI', '��ͨԱ��', 7782, to_date('02-04-2015', 'dd-mm-yyyy'), 1250.00, 1400.00, 20);

insert into SCOTT.EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values (8890, 'Zhang', '��ͨԱ��', 7780, to_date('02-04-2006', 'dd-mm-yyyy'), 1250.00, 1400.00, 30);

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

--������
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

--��������
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
values (1, '����'�� 13115152323);

insert into SCOTT.USERORGZ (ID, USERNAME, MOBILEPHONE)
values (2, '����'�� 13115152324);

insert into SCOTT.USERORGZ (ID, USERNAME, MOBILEPHONE)
values (3, '����'�� 13115152325);

insert into SCOTT.USERORGZ (ID, USERNAME, MOBILEPHONE)
values (4, 'С��'�� 13115152323);

insert into SCOTT.USERORGZ (ID, USERNAME, MOBILEPHONE)
values (5, '��С��'�� 13115152324);

insert into SCOTT.USERORGZ (ID, USERNAME, MOBILEPHONE)
values (6, '��˼'�� 13115152325);

insert into SCOTT.USERORGZ (ID, USERNAME, MOBILEPHONE)
values (7, 'С��'�� 13115152326);

insert into SCOTT.USERORGZ (ID, USERNAME, MOBILEPHONE)
values (8, 'С��'�� 13115152323);

insert into SCOTT.USERORGZ (ID, USERNAME, MOBILEPHONE)
values (9, 'С��'�� 13115152327);

insert into SCOTT.USERORGZ (ID, USERNAME, MOBILEPHONE)
values (10, 'С��'�� 13115152328);

commit;

select * from SCOTT.DEPT;
select * from SCOTT.EMP;
select * from SCOTT.SALGRADE;
select * from SCOTT.USERORGZ;
