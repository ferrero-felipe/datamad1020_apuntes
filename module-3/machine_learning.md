# Machine Learning

![ML](https://www.expert.ai/wp-content/uploads/2017/03/machine-learning-definition.jpeg)

Hello datamad1020!!!!

This is the end of our first week dive into Machine Learning.

As we have seen, `ML` is a huge universe, inside an even bigger one called `Artificial Intelligence`, and that contains another one called `Deep Learning`. Inception!

![AI](https://miro.medium.com/max/631/0*Q3PICBlib-932hhH.png)

Being such enormous universes, we can't just turn it into a recipe and follow the same steps always. We need to `explore` and `investigate`.

Both concepts, algorithms, models, techniques and most of all explore our data!

But, as to give us all a little help, we've prepared a few topics of importance and will list them here. ;)

## Types of Machine Learning
- Supervised
    When we try to predict a value corresponding to the labels  on our dataset. We can divide these into two different kinds of problems:
    - Regression
        When we are predicting numeric values on a continuous (or somewhat continuous) scale.
    - Classification
        When we are predicting to which `class` each instance of data belongs to.
        - Binary (Two class): Cats/Dogs, Yes/No, 1/0
        - Multiclass: Cats/Dogs/Horses/Frogs, etc. Multiple classes
        - Multilabel: Same as above, but each instance may belong to more than one class. Classes are not mutuallly exclusive in multilabel problems.
- Unsupervised
    When we are trying to find previously unknown patterns in data. For instance, when we separate data into groups previously uknown. Most commonly, these are clustering models. Unsupervised learning is characterized by not having a ground truth or labeling on the data.
- Reinforcement
    When the model is optimizing it's performance on a task(action) through positive and negative reinforcements, rewards and penalties.

### Key concepts
- Instance: The thing about which you want to make a prediction. For example, the instance might be a web page that you want to classify as either "about cats" or "not about cats".
- Label: An answer for a prediction task ­­ either the answer produced by a machine learning system, or the right answer supplied in training data. For example, the label for a web page might be "about cats".
- Feature: A property of an instance used in a prediction task. For example, a web page might have a feature "contains the word 'cat'".
- Feature Column: A set of related features, such as the set of all possible countries in which users might live. An example may have one or more features present in a feature column. "Feature column" is Google-specific terminology. A feature column is referred to as a "namespace" in the VW system (at Yahoo/Microsoft), or a field.
- Example: An instance (with its features) and a label.
- Model: A statistical representation of a prediction task. You train a model on examples then use the model to make predictions.
- Metric: A number that you care about. May or may not be directly optimized.
- Objective: A metric that your algorithm is trying to optimize.
- Pipeline: The infrastructure surrounding a machine learning algorithm. Includes gathering the data, cleaning and processing it, putting it into training data files, training one or more models, and exporting the models.

_Key concepts adapted from [Google's Rules of ML](https://developers.google.com/machine-learning/guides/rules-of-ml)_

## Different models
### Regression
- Linear Regression (OLS)
- Support Vector Machine Regressor
- KNN (Nearest Neighbors) Regressor
- Decision Tree Regressor
- Random Forest Regressor

### Classification
- Logistic Regression
- Support Vector Machine Classifier
- KNN (Nearest Neighbors) Classifier
- Decision Tree Classifier
- Random Forest Classifier
- #### Multiclass techniques
    - One-vs-The-Rest
    - One-vs-One

### There are many more models! Investigate on your own.
- [sklearn guide to Supervised Learning Models](https://scikit-learn.org/stable/supervised_learning.html)

## Our enemies
- Underfit
- Overfit

## Techniques
### Regularization
- Ridge (Regularization L2)
- Lasso (Regularization L1)
- ElasticNet (Regularization L1+L2)
### Train Test Splitting
Dividing our data to separate part of the data and simulate how our model fares against new data unknown to it.
### Cross Validation
To make sure our metrics are valid and not by chance from our division of the data.
### Grid Search
Automatic process of trying different combinations of parameters to get the best optimization of our model.
### Standardization
Is the process of putting different variables on the same scale.
- [Standardization vs Normalization](https://towardsdatascience.com/normalization-vs-standardization-quantitative-analysis-a91e8a79cebf)
### Bootstraping
Resampling with replacement
### Bagging and Boosting
- Bootstrap Aggregating
Both bagging and boosting are techniques to improve our model.
RandomForest is a bagging algorithm.
### Encoding categoricals
Categorical features must be properly converted into numeric variables for many models. There are different ways of achieving this
- Label Encoder (ordinal encoding)
- One Hot Encoder (dummies)
### Feature Cross
Process of creating new synthetic features by multiplying different variables. This is very useful to allow for linear separation or distribution of that that is not linear distributed by themselves.

## ML Workflow
- Figure out the problem! Is it supervised or unsupervised? Regression or Multiclass? etc.
- Gather data!!!
- Prepare the data
    - Cleaning
    - Standardizing if needed
    - Feature Crossing
    - Encoding, etc.
    - Train test Splitting
- Choose a Model
- Train
- Evaluate
    - Metrics! Metrics! Metrics!
    - Cross Validation
- Model Selection + Hyperparameter tuning

This is where we will get the best out of our model/models. Try different models and combinations and see what gets us the best result.
    - Grid Search
- Prediction!


## Awesome references
- [Google Developers' Machine Learning section](https://developers.google.com/machine-learning)