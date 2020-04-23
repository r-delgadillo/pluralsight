# Types of Machine Learning Problems
* Classification - Is a network packet malicious or benign
* Regression - we use to predict a continous value. For example, price of car given its make, model, etc.
* Clustering - Large amount of data and would like to see general catorgies. For example, news paper articles that are related to spots
* Dimensionality reduction - 

First we produce an ML model by training the algorithm with X data. The model is then used to predict new values. 

Input to ML models is called "Feature vector"

Output of the model is often called "Label" or  "Predicted Value"

## Example of process

Corpus (Data) -> Classification Algorithm -> ML-based classifier (Model)

## Traditional ML Models

* Regression models: Linear, Lasso, Ridge, SVR
* Classification models: Naive Bayes, SVMs, Decision trees, Random forests
* Dimensionality Reduction: Manifold learning, factor analysis
* Cluastering: K-means, DBSCAN, Spectral clustering

# What is a Neural Network
## Deep Learning
Algorithms that learn what features matter

## Neural Networks
The most common class of deep learning algorithms

Example,
Corpus (Data) -> Layer 1 -> Layer 2 -> Layer N -> ML-based classifier (Model)


* Each layer learns from the previous layer. 
* Each layer consists of individual interconnected neurons
* Each layer usually looks at different parts of the data. For example, layer 1 looks at color, layer 2 looks at shape.


## Neurons
Simple building blocks that actually "learn"

# Traditional vs. Deep Learning Models

## Traditional ML Models
* Features used in models explicitly chosen by domain experts
* Structured data such as numbers and probabilities
* Wide range of problem-specific solution techniques
* Each solution technique adopts characteristic approach
* User has more insight into mechanis and internals of models
* scikit-learn

## Deep Learning ML Models
* Features used in models implicitly chosen by model itself
* Unstructured data such as images and movies
* Neural networks by far the most common solution technique
* All solution techniques rely on neurons and interconnections between them
* Black-box models that are hard to question or reverse-engineer
* TensorFlow, Keras, PyTorch

# Scikit-Learn
(scikit-learn)[https://scikit-learn.org/stable/]

Easy to use, very comprehensive and efficient Python library for traditional ML models.

Foundation of scikit-learn include NumPy, SciPy, Matplotlib

* NumPy: Base n-dimensional array package
* SciPy: Fundamental library for scientific computing
* Matplotlib: Comprehensive 2D/3D plotting
* Sympy: Symbolic mathematics
* Pandas: Data structures and analysis

