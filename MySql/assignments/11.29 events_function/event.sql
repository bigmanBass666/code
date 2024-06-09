-- create
create event event209 on schedule every 8 second do
insert into
    time_log209 (save_time, info)
values
    (now (), "event209-scheduled tasks");

-- drop
drop event event209;

-- enable
alter event event209 enable;

-- disable
alter event event209 disable;

-- rename
alter event event209
rename to event209_rename;

-- select all events
select
    *
from
    information_schema.events;