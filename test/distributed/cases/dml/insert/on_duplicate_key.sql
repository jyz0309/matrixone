create table t1(a int primary key, b int);
delete from t1;
insert into t1 values (1,1);
insert into t1 values (1,2), (2,2) on duplicate key update b=b+10;
select * from t1;
delete from t1;
insert into t1 values (1,1);
insert into t1 values (1,2), (2,2) on duplicate key update b=values(b)+10;
select * from t1;
delete from t1;
insert into t1 values (1,1);
insert into t1 values (1,11), (2,22), (3,33) on duplicate key update a=a+1,b=100;
select * from t1;
delete from t1;
insert into t1 values (1,1);
insert into t1 values (1,2), (1,22) on duplicate key update b=b+10;
select * from t1;
delete from t1;
insert into t1 values (1,1),(3,3);
insert into t1 values (1,2),(2,22) on duplicate key update a=a+1;
delete from t1;
insert into t1 values (1,1),(3,3);
insert into t1 values (1,2),(2,22),(3,33) on duplicate key update a=a+1;