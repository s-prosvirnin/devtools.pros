SHOW VARIABLES LIKE "%version%";
SHOW CREATE TABLE partitions1;

drop table if exists partitions1;
CREATE TABLE partitions1 (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(255),
    number INT NOT NULL
) ENGINE=INNODB
;

ALTER TABLE partitions1 PARTITION BY RANGE ( id ) (
    PARTITION p0 VALUES LESS THAN (10),
    PARTITION p1 VALUES LESS THAN (20),
    PARTITION p2 VALUES LESS THAN MAXVALUE
);

ALTER TABLE partitions1 PARTITION BY HASH (id%10) PARTITIONS 10;

insert into partitions1 (id, number) values (5, 5);
insert into partitions1 (id, number) values (15, 15);
insert into partitions1 (id, number) values (21, 21);
insert into partitions1 (id, number) values (30, 30);

alter table t1 drop partition p1, p2;

select * from partitions1;
explain select * from partitions1;
select * from partitions1 where id = 15 and number = 5;
explain select * from partitions1 where id = 15 and number = 5;
explain select * from partitions1 where id = 15 and number = 15;
explain select * from partitions1 where number = 15 and id = 15;
explain select * from partitions1 where number = 15;
explain select * from partitions1 where id = 5;
explain select * from partitions1 where id = 15;
explain select * from partitions1 where id = 21;

select 10%3;


drop table if exists t1;
CREATE TABLE t1 (
    fname VARCHAR(50) NOT NULL,
    lname VARCHAR(50) NOT NULL,
    region_code TINYINT UNSIGNED NOT NULL,
    dob DATE NOT NULL
)
    PARTITION BY RANGE( region_code ) (
        PARTITION p0 VALUES LESS THAN (64),
        PARTITION p1 VALUES LESS THAN (128),
        PARTITION p2 VALUES LESS THAN (192),
        PARTITION p3 VALUES LESS THAN MAXVALUE
);

explain SELECT fname, lname, region_code, dob
FROM t1
WHERE region_code > 125 AND region_code < 130;


alter table t1 drop partition p3, p4;
alter table t1 add partition (
    partition p3 values less than (500),
    PARTITION p4 VALUES LESS THAN MAXVALUE
);














DELIMITER $$
CREATE PROCEDURE generate_test_data ()
begin
    set @p := 1;
    while @p<1000 do
        set @p:=@p+1;
    end while;
end $$;
-- delimiter ;