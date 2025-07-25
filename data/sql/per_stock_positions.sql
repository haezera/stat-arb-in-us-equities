create table per_stock_positions (
    date date,
    s_score numeric(15, 5),
    edge_leg text,
    hedge_leg text,
    signal int,
    log_return_edge numeric(15, 5),
    log_return_hedge numeric(15, 5),
    volume_edge bigint,
    volume_hedge bigint,
    max_position_size bigint,
    capacity_weight numeric(15, 5)
);