-- do note i am using postgresql
create table adjusted_historical (
    date date,
    adj_close numeric(15, 4),
    high numeric(15, 4),
    low numeric(15, 4),
    open numeric(15, 4),
    volume bigint,
    ticker text
);

create table adjusted_week_to_week (
    date date,
    adj_close numeric(15, 4),
    high numeric(15, 4),
    low numeric(15, 4),
    open numeric(15, 4),
    volume bigint,
    ticker text
);