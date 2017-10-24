<a name="intro"></a>

# Introduction
<a name="what-is-ml"></a>

## What is machine learning?
There are two definitions, on which is outdated and one which is more relevent.

First one is by Arthur Samuel:
>The Field of study tha gives computers the ability to learn without being explicitly programmed.

The second one is the more relevent one by Tom Mitchell
>A computer program is said to learn from experience E with respect to some class of tasks T and performance measure P, if its performance at tasks in T, as measured by P, improves with experience E.

### Example of Tom Mitchell's definition, playing checkers
* E - the experience for playing many games of checkers
* T - the task of playing checkers
* P - the probability that the program will win the next game

There are two main types of machine learning classifications:
* [Supervised Learning](#supervised-learning)
* [Unsupervised Learning](#unsupervised-learning)

<a name="supervised-learning"></a>

### Supervised Learning
The correct answer is given to the algorithm, then methods can be used to predict for an unknown value.

These methods are:
* [Regression](https://github.com/waquidvp/machine-learning-notes/blob/master/Regression.md#regression) - It creates a continuous valued output
* [Classification](https://github.com/waquidvp/machine-learning-notes/blob/master/Classification.md#classification) - Creates a discrete valued output, e.g. 0 or 1
    * The classification is related to one or more feature.

<a name="unsupervised-learning"></a>

### Unsupervised Learning
In this, the inputed data is not labelled.

Methods are used to label them:
* Clustering - The data is grouped together to relevent groups
    * Ex. - Grouping related news topics