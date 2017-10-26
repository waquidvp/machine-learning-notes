<a name="regularization"></a>

# Regularization
To avoid over fitting of our hypothesis function we can reduce the effect of some of the terms in our hypothesis.

We do this by increasing the coefficient which will reduce the effect of that term.

This can be done through regularization where the following is added to end of the cost function
>lambda * sum(O^2)

where O can be the other terms and lambda is the regularization parameter.

This process can be done to both linear and logistic regression.

