# Wine Cultivar Prediction using Multinomial Logistic Regression

## Dataset Overview
The dataset, available from the UCI Machine Learning Repository (https://archive.ics.uci.edu/ml/datasets/Wine), contains the following columns:

- Alcohol
- Malic Acid
- Ash
- Alcalinity of Ash
- Magnesium
- Total Phenols
- Flavanoids
- Nonflavanoid Phenols
- Proanthocyanins
- Color Intensity
- Hue
- OD280/OD315
- Proline
- Class (Wine Cultivar)

The data includes 178 observations of chemical analysis results of wines grown in Italy, from three different grape cultivars. The goal is to predict the cultivar (Class 1, 2, or 3) based on these properties.

## Research Question
Can we predict the cultivar of wine (Class 1, 2, or 3) based on the chemical properties using Multinomial Logistic Regression?

## Data Preprocessing
- The outcome variable "Class" was treated as a categorical factor.
- Missing values were checked and handled.
- The dataset was split into training (60%), validation (20%), and testing (20%) sets.

## Model Selection
- **Stepwise Selection** was used to identify the best predictors: Flavanoids, Color Intensity, and Proline.
- **Multinomial Logistic Regression** was applied, using Class 2 as the reference category.

## Multicollinearity Check
- The **Variance Inflation Factors (VIFs)** were close to 1, indicating no significant multicollinearity among the predictors.

## Model Evaluation
- **Validation Accuracy**: 97.22% (1 misclassification).
- **Test Accuracy**: 88.89% (misclassifications mainly in Class 2, misclassified as Class 1 or Class 3).
- **Misclassification Rates**: 2.78% for validation, 11.11% for test data.
- **Likelihood Ratio Test**: The model showed a highly significant p-value, indicating it is a significantly better fit than the null model.

## Conclusion
- **Final Model**: Class ~ Flavanoids + Color Intensity + Proline.
- The model correctly classified 93.06% of all observations.
- Class 2 had the highest misclassification rate, but overall, the model was effective at predicting the wine cultivar based on the selected chemical properties.

It was successfully demonstrated that Multinomial Logistic Regression can predict the cultivar of wine with high accuracy (93.06%) based on chemical properties, answering our research question affirmatively.
