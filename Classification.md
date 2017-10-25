<a name="classification"></a>

# Classification
The output of this type of function is a discrete value (e.g. 0 or 1).
By standards, the 0 is know as the negative class and the 1 as the positive class.

The output can also be multiclass.

Methods of classification:
* Logistic Regression - has nothing to do with linear regression

<a name="logistic-regression"></a>

## Logistic Regression
When the output of the hypothesis is discrete and is 1 or 0, it is known as a binary classification problem.

We want to create a hypothesis which satisfies 
>0 < h(x) < 1

In order to do this, the sigmoid function (logistic function) is used
> g(z) = 1/(1+e^-z)

and h(x) is replaced by
> h(x) = g(O'x)

so the hypothesis is
> h(x) = 1/(1+e^-O'x)

The hypothesis gives us the probability that h(x) = 1.

This means that if h(x) > 0.5 we can assume it as 1 and if h(x) < 0.5 we can assume it as 0.

When this is true, h(x) > 0.5 when x > 0 and h(x) < 0.5 when x < 0.

The rule to remember is
>h(x) > 0.5 --> x > 0

>h(x) < 0.5 --> x < 0

### Decision Boundary
This is the line that seperates the h(x) from being 1 or 0. This can be any shape, e.g. circle. The shape is created by the h(x).

### Cost Function
The cost function cost(h(x), y) is
> -log(h(x)) when y = 1
and
>-log(1 - h(x)) when y = 0

A simplified way to write this is 
>cost(h(x), y) = -ylog(h(x)) - (1 - y)log(1 - h(x))

The full cost function is
J(O) = -( 1/m )sum[ylog( h(x) )+( 1 - y )log( 1 - h(x) )]

### Gradient Descent
The gradient descent algorithm is the same as the linear regression one.

![Gradient Descent for Logistic Regression](https://github.com/waquidvp/machine-learning-notes/blob/master/assets/multivariate-regression-gradient-descent.PNG?raw=true)

The only deffernce is the definition of h(x).

## Multiclass Classification
### One vs rest

Do logistic regression on each class seperatly treating the rest as negative classes.
Then take the value that has the highest probability.