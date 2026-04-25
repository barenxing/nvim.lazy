-- luasnip.lua

local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

-- Function to return the date string
local function today()
  return os.date("%Y-%m-%d")
end

ls.add_snippets("python", {
  s("hearder", {
    t("# "),
    i(1),
    t({ "", "#", "" }),
    t("# Created by Richard Hu on "),
    f(today, {}),
    t({ "", "#", "" }),
    i(2),
  }),
  s("mltemplate", {
    t({
      "# import libraries",
      "import pandas as pd",
      "import numpy as np",
      "import matplotlib.pyplot as plt",
      "from sklearn.model_selection import train_test_split",
      "from sklearn.preprocessing import StandardScaler",
      "",
      "# Load data",
      "df = pd.read_csv('data.csv', delimiter=',')",
      "",
      "#",
      "# Explore data",
      "#",
      "",
      "",
      "# Split data into features and target",
      "X = df.iloc[:, :-1]",
      "y = df.iloc[:, -1]",
      "",
      "# X = df.drop('target', axis=1)",
      "# y = df['target']",
      "",
      "#",
      "# Transform Categorical data",
      "#",
      "",
      "",
      "# Split the dataset into training and testing sets",
      "(X_train, X_test, y_train, y_test) = train_test_split(X, y, test_size=0.2, random_state=0)",
      "",
      "# Create an instance of StandardScaler",
      "sc = StandardScaler()",
      "",
      "# Fit the scaler to the training data and transform both the training and testing data",
      "X_train_scaled = sc.fit_transform(X_train)",
      "X_test_scaled = sc.transform(X_test)",
      "",
    }),
  }),
  s("one_hot_encoder", {
    t({
      "from sklearn.compose import ColumnTransformer",
      "from sklearn.preprocessing import OneHotEncoder, LabelEncoder",
      "",
      "# Identify catagorical features",
      "categorical_features = ['feature1', 'feature2']  # Replace with your actual categorical feature names",
      "",
      "# Implement an instance of the ColumnTransformer",
      "ct = ColumnTransformer(transformers=[('encoder', OneHotEncoder(), categorical_features)], remainder='passthrough')",
      "",
      "# Apply the fit_transform method to the features",
      "X = np.array(ct.fit_transform(X))",
      "",
      "# Use LabelEncoder to encode binary categorical data",
      "le = LabelEncoder()",
      "y = le.fit_transform(y)",
    }),
  }),
})
