create table positions (
    date date,
    vw_long_return numeric(15, 6),
    vw_short_return numeric(15, 6),
    portfolio_return numeric(15, 6),
    portfolio_return_winsorized numeric(15, 6),
    total_positions int
);