---
layout: post
title:  AI trading day 1 note
date:   2018-10-23 16:40
categories: Trading
tags: trading AI
---
* content
{: toc}

key words
American Option
European Option
CAll and Put Option
Forwards


## Stock types and prices

### Options: calls, puts, American, European

Options give the owner the right to buy or sell at the strike price (a fixed price that is determined when the option is created), on or before an expiration date. The most common are call options and put options. Call options give the right to buy at the strike price; put options give the owner the right to sell at a fixed price. Some options allow the holder to “exercise” (buy or sell) at the strike price any time up to the expiration date. These are called “American options” by convention, even though this doesn’t mean that the options are traded in the Americas. Another class of options only allows the holder to exercise the option at the expiration date, but not earlier. These are called “European options” by convention, but again, European options don’t necessarily have to be traded in Europe.








### Forwards and Futures

Futures and forwards contracts are similar, in that a buyer and seller both agree to make a future transaction at a predetermined price. Futures are standardized contracts that can be traded on a futures exchange, so this may be what people think of when discussing “forwards and futures”. Forward contracts are usually privately determined contracts between two parties. So an investor can trade futures contracts, but forward contracts are not designed to be traded like futures.

### Public versus private equity

Public equity refers to stocks that can be traded on a stock exchange. Private equity refers to ownership in private companies, so the owners of private equity do not trade their shares on a stock exchange. Our course is primarily focused on public equity, which we’ll refer to as stocks, since the ability to buy and sell freely enables us to adjust our investments based on new or time-sensitive information.



Dutch East India Company

First to issue stocks.

### Market Bubbles
A recent example of a bubble is bitcoin, which rose from from under $1,000 per coin in January of 2017, to over $17,000 per coin by December of the same year, before dropping to about $6,000 by June of 2018.

Bitcoin and Turlip



### Stock data

```python

with open('prices.csv','r') as file:
    prices = file.read()

print(prices)

import pandas as import pd

price_df = pd.read_csv('price.csv')
price_df

# add header names

price_df = pd.read_csv('price.csv', names = ['ticker', 'date', 'open', 'high', 'low',
                                             'close', 'volume', 'adj_close', 'adj_volume'])

# get the median
price_df.median()

# get median of each ticker
price_df.groupby('ticker').median()

# alternative
price_df_ticker_groups = price_df.groupby('ticker')
price_df_ticker_groups.median()
```

```python
import pandas as pd
import quiz_tests

def csv_to_close(csv_filepath, field_names):
    """Reads in data from a csv file and produces a DataFrame with close data.

    Parameters
    ----------
    csv_filepath : str
        The name of the csv file to read
    field_names : list of str
        The field names of the field in the csv file

    Returns
    -------
    close : DataFrame
        Close prices for each ticker and date
    """

    # TODO: Implement Function

    return pd.read_csv(csv_filepath, names=field_names).pivot(index='date', columns='ticker', values='close')


quiz_tests.test_csv_to_close(csv_to_close)

```




## Market Mechanics

Orange example

price is set by amount of transaction


company metrics.
revenue
profit
assets


Demand

orders and prices.

limit order


please market order.
market maker.
New York stock exchange.
citidel security, gh strike hold

ask and bit spread.

### Liquidity
the ability to trade an asset at a stable price.
penny stock has low liquidity

### Tick data
OHLC: open, high, low, close.
bar

### (find a picture)

```python

import numpy as np
import pandas as import pd
dates = pd.date_range('10/10/2018',periods = 11, freq = 'D')
close_prices = np.arange(len(dates))
close = pd.Series(close_prices, dates)

# create a 3 days period
close.resample('3D')
# get the first 3 days period.
close.resample('3D').first()
```
`DatetimeIndexResampler [freq=<3 * Days>, axis=0, closed=left, label=left, convention=start, base=0]`

This returns a `DatetimeIndexResampler` object

```
close.resample('W').ohlc()

```

To get the weekly closing prices from close, you can use the `Resampler.last` function.

```python
close.resample('W').last()
```


price discovery

Volume

### pre-market and post-market trading.


Note: Pre-market sessions (for the US market) are a period of time where stocks are very thinly traded. Market participants often use this to gauge the strength and direction of the market. Post-market sessions are often used by traders who want to trade on corporate announcements made after market closes, or for brokers to make whole of an incomplete client order.

### gaps in market data
would be useful when analysis involves time/transaction

Markets in different timezones.

## Data Processing
Note : Tick data is sometimes referred to as heterogeneous data, since it is not sampled at regular time intervals, whereas Minute-level or End-of-Day data is called homogeneous. Converting heterogeneous data to a homogeneous form can be a good exercise!

### when to use timestamp


### Corporate Actions: stock splits.


increase circulation
e.g
Amazon
Jun 2nd, 1998   2:1    43:69      85.63(Jun 01) 2.04%
Jan 5th, 1999   3:1    124:50    354.94(Jan 04) 5.23%
Sep 2nd, 1999   2:1    60:50     199.06(Sep 01) 0.89%

adjust price

### Dividend
e.g
Qcom
0.57 cent
on 05/21/2017


1+D/S

D:Dividend
S: Stock price at ex-dividend date

Aside: Although a stock split shouldn’t theoretically affect the market cap of a stock, in reality it does! There are some intriguing behavioral patterns that researchers have observed among traders. One seems to suggest that after a stock splits, and the price drops considerably, people seem to think it is going to go back up to the previous price (double or triple)! This creates an artificial demand for the stock, which in turn actually pushes up the price.


### Technical Indicators

Simple Moving Average
bolinger band

### Missing value
weekends, holidays, market close and open dates

The NYSE and NASDAQ average about 252 trading days a year. This is from 365.25(days on average per year) * 5/7(proportion work days per week) = 260.89 - 9(holidays) = 251.89 ~ 252.

### Surviver Bias


### Fundamental Information


A company’s executives are usually expected to make spending decisions based on maximizing shareholder value.
Fundamental Analysis
Sales Per Share
Earnings Per Share
Dividends Per Share
After a company has positive earnings, they may decide to either reinvest the cash in growing the company’s business. A company’s executives are usually expected to make spending decisions based on maximizing shareholder value. Whether this always happens in practice is debatable, but ideally, if the executives decide that re-investing in the business yields lower returns than an investor could gain from investing in a similar business at the same level of risk, they will give some of the earnings to shareholders as cash. This cash is referred to as dividends.

Let’s say, for example, that the smartphone company decides to return $10 million of its earnings to its shareholders. The dividend per share is then $10 million divided by 10 million, or $1 per share.


### Price to Earnings Ratio
A term you’ll see often is price to earnings ratio, or PE ratio for short.





### Exchange Traded Funds


ETF composition index.

That's correct! An ETF (Exchange Traded Fund) is made up of the same stocks as one of the many indices. However, it may not be exactly the same.



## Stock Returns

$$r = \frac{p_t -p_{t-1}}{p_{t-1}}$$


```python
import pandas as pd
close = pd.DataFrame(
    {
    'ABC':[1,5,3,6,2],
    'EFG': [12, 51, 43, 56, 22],
    'XYZ': [35, 36, 36, 36, 37],},
    pd.date_range('10/01/2018', periods=5, freq='D'))
close

close.shift(1)
# use close.shift(1) to shift data 1 row down
close.shift(-1)
# or shift one row in the future by using minus sign

def returns(close):
    return (close - close.shift(1))/close.shift(1)


```

### Log Returns
$$\frac{p_t - p_{t-1}}{p_{t-1}} + 1 \\
=\frac{p_t - p_{t-1}}{p_{t-1}} + \frac{p_t - p_{t-1}}{p_t - p_{t-1}} \\
=\frac{p_t}{p_{t-1}}$$

R denotes log return
$$ R =ln(\frac{p_t}{p_{t-1}})$$
r denotes raw return
$$r=e^R-1$$





Sometimes the computation will incorrectly yield the value 0. This is called arithmetic underflow.


Distributions of Returns and Prices

fat tails

### Summary of Log Return

Log returns can be interpreted as continuously compounded returns.
Log returns are time-additive. The multi-period log return is simply the sum of single period log returns.
The use of log returns prevents security prices from becoming negative in models of security returns.
For many purposes, log returns of a security can be reasonably modeled as distributed according to a normal distribution.
When returns and log returns are small (their absolute values are much less than 1), their values are approximately equal.
Logarithms can help make an algorithm more numerically stable.




## Momentum Trading

### Long and Short

Portfolio
A portfolio is a collection of investments held and/or managed by an investment company, hedge fund, financial institution or individual.

Long
A long (or long position) is the purchase of an asset under the expectation that the price of the asset will rise.

Short
A short (or short position) is the selling of an asset under the expectation that the price of the asset will decline. In practice, an investor profits from a short position by borrowing shares from a brokerage firm (agreeing to pay an interest rate as a fee), selling them on the open market, and later buying them back on the open market at a lower price and returning them to the brokerage firm.


### Data Type


```python
signal_long = (prices > 50).astype(np.int)
signal_short = (prices < 20).astype(np.int)

pos_long = 30 * signal_long
pos_short = -10 * signal_short

return pos_long + pos_short

```

### Trading Strategy

Stock Universe

```python
import project_tests


def date_top_industries(prices, sector, date, top_n):
    """
    Get the set of the top industries for the date

    Parameters
    ----------
    prices : DataFrame
        Prices for each ticker and date
    sector : Series
        Sector name for each ticker
    date : Date
        Date to get the top performers
    top_n : int
        Number of top performers to get

    Returns
    -------
    top_industries : set
        Top industries for the date
    """
    # TODO: Implement Function


    return set(sector.loc[prices.loc[date].nlargest(top_n).index])
```


### Statistical Analysis
Mean Return
$$\bar{x} \frac{1}{n}\sum_{i=1}^{n}x_i$$

t_Statistic

$$t = \frac{\bar{x}}{SE_{\bar{x}}}$$

Standard Error of the Means

$$SE_{x_{\bar{x}}}=\frac{standard deviation}{\sqrt{n}}$$


P-hacking
Data-snooping


T test
```python
x = pd.Series.from_csv(filename, header=0)
# header = 0 means the 0 row is the header
t,p = stats.ttest_1samp(x ,mean)
# if one tail, p value need to be devided by 2
```

### Finding Alpha

Alpha Research
Improve Strategy
backtesting





## resources and further reading

[Offset Aliases¶](http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases)








[Robert J. Shiller](http://www.econ.yale.edu/~shiller/)
[Robert Shiller's "Economic View" column for the New York Times](https://www.nytimes.com/search/?query=economic+view+and+shiller&srchst=nyt)
[Nassim Taleb's home page](http://www.fooledbyrandomness.com/)
[Nassim Taleb lecture, "How do you solve a problem like uncertainty?"](https://iai.tv/video/how-do-you-solve-a-problem-like-uncertainty)
[Stabilization Won’t Save Us](https://www.nytimes.com/2012/12/24/opinion/stabilization-wont-save-us.html)





Nassim Taleb lecture, "How do you solve a problem like uncertainty?
note:
Disorder Brothers
1: uncertainty
2: Variability
3: imperfect, incomplete knowledge
4: chance
5: chaos
6: volatility
7: disorder
8: entropy
9: time
10: the unknown
11: randomness
12: turmoil
13: stressor
14: error



400 millions earthquake detected
if harms is linear, then you will be gone.


old man and young man analogy
new and old technology

medicine example
for someone very ill, any medicine would make a obvious change.

in case of pollution
if we have more sources of energy, then the harm to nature is less.
should have more sources of energy


principles
Fragility -> nonlinear response
avoid concentration/cycling
only reaction to extreme environments
GMO

2: Model Error <-> Random Event
no concavity to model error, distributed effects.

nature is not conservative, it kills and creates species every day.
