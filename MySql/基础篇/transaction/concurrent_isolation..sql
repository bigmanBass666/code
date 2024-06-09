-- * 查看事务隔离级别
select @@transaction_isolation;

-- * 设置事务隔离级别

-- ? format: set [session | global] transaction isolation level { read uncommitted | read committed | repeatable read | serializable };

-- example:
set session transaction isolation level read uncommitted;

set session transaction isolation level repeatable read;