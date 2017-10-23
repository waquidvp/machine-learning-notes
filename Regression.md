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

<a name="multi-variate-regression"></a>

# Multivariate Linear Regression
The different x values are called the features.

Hypothesis in this case will be
>h(x) = m0x0 + m1x1 + m2x2 + m3x3 + ... + mnxn

This can be written as, if we assume x0 = 1

>x = [x0; x1; x2; x3; x4;...;xn]

>m = [m0; m1; m2; m3; m4;...;mn]

>m^t = [m0, m1, m2, m3, m4,...,mn]

>h(x) = (m^t)x

Gradient descent can also be implemented but with a little change
![Gradient Descent for Multivariate Linear Regression](https://github.com/waquidvp/machine-learning-notes/blob/master/assets/multivariate-regression-gradient-descent.PNG?raw=true)

## Feature Scaling
Make sure features are on a similiar scale. This results in a faster gradient descent algorithm.

>Trick: Try to make the features between -1 to 1

This can be done by xi/si where si is the range of xi.

Don't make it too small or too big. The rule of thumb should be -3 to 3 or -1/3 to 1/3.

This doesn't have to be strict.

Other methods:
* Mean Normalization - replace feature(xi) with (xi - qi)/si
    * More generally (xi - qi)/si where 
        * qi - the average value of x in the training set
        * si - the range of x values or the standard deviation

## Learning Rate
If the learning rate is too small, the convergence will be slow.
If the learning rate is too large, the cost function might not decrease.

To debug gradient descent you can plot the cost function against # of iterations.
Is the value of the cost function is decreasing, the gradient descent must be work.

If the plotted graph shown an increase in the cost function then use a smaller learning rate.

You can also create a convergence test, which declares a convergence.
This can be used to find if the gradient descent has converged.

## Polynomial Regression
To create a polynomial model, add features based on the base feature to be at the order of the polynomial which fits better with the data.
When doing this feature scaling becomes very important.

# Multivariate Linear Regression with a Normal Equation

>m = ((X'X)^-1)(X'y)

In normal equation there is no need to choose a learning rate.
Normal equation also doesn't require iteration.
It also doesn't require feature scaling.

With a large # of features, the normal equation can be slow.
Use normal equation when n = 100, 1000, or even 10000.

Use gradient descent when n = 10^6.

## Non-invertibility

If (X'X)^-1 doesn't work, you may have redundant feature or there are too many features: m < n.