---
layout: post
title:  AI trading day 1 note
date:   2018-10-23 16:40
categories: Trading
tags: trading AI
---
* content
{: toc}


## Risks

### Systematic Risks
(inflation, recession, interest rates, GDP...

#### Sector specific Risks
regulation, legilation, materials costs ...






### Idiosyncratic risks.
inherent to individual stocks.
labor strike, managerial change...

## Outliers
Fat finger errors
example


statistic arbitrage

Signal/Noise Ratio

### Homoscedasticity v.s Heteroskedasticity

Stationary
Mean, Variance, Covariance are the same over time.

Breusch-Pagan Test

p value < 0.05 -> Heteroskedasticity




Box-Cox Transformation

$$T(x)=\frac{x^{\lambda}-1}{\lambda}$$

$$\lambda$$ is a constant you can choose

If you choose $$\lambda$$ to be zero, then the transformation is just:

$$T(x) = ln(x)$$

It is used to make data more normal.

monotonic transformation



### Linear Regression
y depends on x

Ordinary Least Square

If residuals follow the normal distribution, then the model is not bias

Multiple Regression

R-squared

Adjusted R-squared

F-test
if p value <= 0.05
Parameters are non-zero, the model is meaningful.


## Time Series Modeling
### Autoregression
log return
Lag
AR Lag 1
Ar Lag 2
Ar Lag 3

$$AR(p)=y_t = \alpha+B_1y_{t-1}+B_2y_{t-2}+...+B_py_{t-p}+\epsilon$$

Vector Autoregressive Model

### Moving Average Model (MA)

MA(q)

$$y_t = \mu + \epsilon_t+\theta_1\epsilon_{t-1}+\theta_2\epsilon_{t-2}+...$$


### Autoregressive Moving Average (ARMA)
ARMA(p,q):$$y~AR(p):+MA(q):$$


Autoregressive integrated moving average (ARIMA)

Original -> Augmented Dickey Fuller Test - p<= 0.05 -> Stationary and I(0)
              |                 |
                Time Difference



### Kalmar Filter

Single-state represents the past



### Volatility

formula for volatility is the formula for standard deviation

$$\sigma \sqrt{\frac{1}{n-1}\sum^n_{i=1}(\bar{r}-r_i)^2}$$

n = number of log return observations
$$r_i$$ = log return at time i
$$\bar{r}$$= mean log return
$$\sigma$$ = volatility

volatility depends on the time frequency

### Annualized Volatility
extrapolate from other frequency, eg. day, weeks, to produce year volatility

$$ln(p_2/p_1)+ln(p_3/p_2)=ln(p_3/p_1)$$

the log return for the year is the sum of the log return of the months.

variance of the sum equals the sum of variance

$$\sigma_{\text{year}}=\sqrt{12}\sigma_{\text{month}}$$
