import pandas as pd
import numpy as np
from sklearn.neural_network import MLPRegressor

datos = pd.read_csv('datos.csv')
x=datos["Año"]
y=datos["Prevalencia"]

X=x[:,np.newaxis]

from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y)

mlr=MLPRegressor(solver='lbfgs', alpha=1e-5,hidden_layer_sizes=(3,3),random_state=1)
mlr.fit(X_train, y_train)
print(mlr.score(X_train,y_train))
print("Prediccion en 2018", mlr.predict([[2026]]))