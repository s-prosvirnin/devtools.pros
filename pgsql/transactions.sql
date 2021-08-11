drop table if exists transactions;
create table transactions (
    id bigserial,
    value int
);

-- select current_setting('transaction_isolation');

-- concurrency update: error
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
update transactions set value = 6 where id = 1;
commit;

BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
update transactions set value = 7 where id = 1;
commit;