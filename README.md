## 'Statistical Arbitrage in the U.S Equities Market' by Avallaneda and Lee (2008)

The paper recreated in this project is located ![here](https://github.com/haezera/stat-arb-in-us-equities/blob/main/stat-arb-in-the-us-equities-market.pdf) [I have stored a copy in this repository].

### Results

#### Preliminary results

These results clearly contain some issues regarding portfolio sizing and possible data anomalies (evident by the large drawdowns and also rallies in very short amounts of time). They also do not include transaction costs, and thus are a naive test.

<center>
    <img src='./readme/backtest_v1.png' width= 800px>
    <img src='./readme/outperform_v1.png' width= 600px>
    <img src='./readme/beta_v1.png' width= 500px>
</center>

### Optimisations of the strategy

One of the major implementation problems of statistical arbitrage strategies, particulary in a large universe as the S&P 500, is the need to long and short the hedge leg (in our case, sector ETFs) simultaneously.

`<add implementation details of sector neutral portfolio construction with residual betas to sector etfs>`

#### Volatility and future returns

`<add details about strat volatility and other information>`

### Backtest configuration

The backtest using a configuration `YAML` file to feed in any configuration you want. This includes your assumptions on what ETFs
to use for different sectors, fallbacks if these sector etfs didn't exist for a period of time (this is important for some sectors
which ETFs don't have extended historical data), and more.

This config file is found in `/research/backtest_config.yaml`. Theoretically, you could change the sector_etfs to be anything - commodity ETFs, whatever. You can also change the fee assumptions if you have stronger conviction that the fees will be more (or less) than what I've assumed. 

### Some notes about this project

This project is largely focused on research around the implementation of statistical arbitrage techniques in American equities throughout history, it's resilience to drawdowns, and improvements that can be made to the strategy.

For the benefit of the reader and anyone who stumbles onto this repository wanting to learn more about statistical arbitrage, I have included all of the data filling scripts **as well as the dumps** for my SQL tables, and the SQL schemas themselves. This means that recreating this repository is really easy. 

I have also used `.env` files where possible so that the running of the notebooks and scripts is as simple as possible.
