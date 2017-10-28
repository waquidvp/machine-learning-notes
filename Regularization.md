<a name="regularization"></a>

# Regularization
To avoid over fitting of our hypothesis function we can reduce the effect of some of the terms in our hypothesis.

We do this by increasing the coefficient which will reduce the effect of that term.

This can be done through regularization where the following is added to end of the cost function
>lambda * sum(O^2)

where O can be the other terms and lambda is the regularization parameter.

This process can be done to both linear and logistic regression.

## Regularized Linear Regression
The following can be added to the end of the cost function
>lambda * sum(O^2)

The final equation being
>J(O) = 1/2m (sum(h(x) - y)^2 + lambda * sum(O^2))

This means the gradient descent algorithm also changes.
>O = O(1 - a(lambda/m)) - a(1/m) * sum(h(x) - y) * x)

The normal equation also changes to
>O = inverse(X'X + lambda[n+1 identity vector with 0 as first value]) * X'y

## Regularized Logistic Regression
The cost function will change by adding the following to the end
>(lambda/2m)*(sum(O^2))

The final equation will be
>J(O) = 1/m * sum(y * log(h(x)) + (1 - y) * log(1 - h(x))) + (lambda/2m) * (sum(O^2))

This means the gradient function will also change and become
> O = O - a * (1/m * sum((h(x) - y) * x + (lambda/m) * O)
