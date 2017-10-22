<a name="regression"></a>

# Regression

## Model representation for regression
Training Set -> Learning Algorithm -> h(hypothesis)

![Example for housing prices from size of house](https://d3c33hcgiwev3.cloudfront.net/imageAssetProxy.v1/H6qTdZmYEeaagxL7xdFKxA_2f0f671110e8f7446bb2b5b2f75a8874_Screenshot-2016-10-23-20.14.58.png?expiry=1508803200000&hmac=y4SHasVstNvMCUAf5-lSkdCuUX1KRIDKaa2vP4ZFxBc)

The hypothesis is a function which maps the x's to the y's.

>h(x) = y

In a single variable linear regression (Univariate Linear Regression)
>h(x) = b + mx

To get a regression line, we need to find m and b. This can be found by decreasing the cost function (squared error function). The cost function is the sum of (h(x) - y) squared.

## Gradient Descent Algorithm
To decrease the cost function an algorithm know as the gradient descent is used.

The algorithm is:

![Gradient Descent Linear Regression](https://jpgdatascience.files.wordpress.com/2016/04/multivariateeq3.png?w=1000)