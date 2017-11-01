<a name="neural-networks"></a>

# Neural Networks

## Model Representation for neural networks
In a neuron, there are two important parts, the dendrite and the axon.

![A diagram of a neuron](https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Neuron.svg/300px-Neuron.svg.png)

* The dendrites are input wires and take in inputs from other neurons.
* The axon are the output wires which output signals to other neurons.

Signals are sent as electric pulses from dendrite to dendrite through the axon.
At each neuron some sort of computation is done.

### Logistic unit model
(x1, x2, x3, ...) -> neuron -> outputs the value of h(x) where
>h(x) = 1/(1+e^-O'x)

This is said to be a neuron with a sigmoid/logistic activation function.
The O (thetas) which were called the parameters and known as the weights.

A neural network consists of multiple layers of neurons like the one just described.

The first layer is always the input layer and the final layer is the output layer.
The layers in between are called the hidden layer.

>a is the activation unit
>O is the matix of weights controlling function mapping from one layer to the next

The size of the O matrix is calculated by the 
>(units in the next layer x (units in current layer + 1))

The +1 is to take in count the bias unit, which = 1.

### Multiclass Classification

### One vs all
When there are multiple classes, there will be the same amount of output nodes.
Each output tells you how strongly it is that specific class.
The outputs will be a vector of size - classes.