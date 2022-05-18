from flask import Flask, request, jsonify
import numpy as np
import random
from sklearn.ensemble import RandomForestRegressor
from sklearn.model_selection import train_test_split
import pandas as pd
import time

# complete training code

start = time.time()

df = pd.read_csv("test2.csv")
df_new=df.dropna()
X, Y = df_new[list(df_new)[:2]+list(df_new)[4:6]], df_new[['p1_win_or_loose']]
X_train, X_test, Y_train, Y_test = train_test_split(X, Y, test_size=0.2, random_state=13, stratify=Y)
model = RandomForestRegressor()
model.fit(X_train, Y_train.values.ravel())

stop = time.time()

print(f"It took {round((stop-start)/1000, 5)} seconds to load the model")

app = Flask(__name__)

@app.route('/api/v1/winpred', methods=["GET"])
def result():

    h1 = request.args.get('h1')
    h2 = request.args.get('h2')
    m1 = request.args.get('m1')
    m2 = request.args.get('m2')

    req = np.array([[h1, h2, m1, m2]])

    op = np.squeeze(model.predict(req)).tolist()

    print(op)
    
    return jsonify(float(op))


if __name__ == '__main__':
    app.run()
