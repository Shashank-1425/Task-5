## Titanic Dataset - Exploratory Data Analysis (EDA)

This project performs an **Exploratory Data Analysis (EDA)** on the famous **Titanic dataset**.

The main goal is to extract insights using both **statistical summaries** and **visual exploration**.

---

## Steps Followed:

1. **Data Loading and Basic Information**
   - Used `.info()`, `.describe()`, and `.value_counts()` to explore the dataset.
   - Identified missing values and data types.

2. **Visual Exploration**
   - Plotted **pairplot** to study relationships between multiple features.
   - Plotted **heatmap** to visualize correlation between variables.

3. **Distribution Analysis**
   - Created **histograms** to study distribution of features like Age, Fare, SibSp, and Parch.
   - Used **boxplots** to detect outliers.
   - Used **scatterplots** to identify relationships between Age and Fare with respect to Survival.

4. **Observations**
   - Higher Fare and First-Class (Pclass=1) passengers had higher survival rates.
   - Females had much better survival rates than males.
   - Younger passengers generally survived more.
   - Fare distribution was right-skewed with some high-value outliers.

5. **Summary of Findings**
   - Majority of passengers (~62%) did not survive.
   - Passenger Class, Fare, Gender, and Age significantly impacted survival chances.
   - Dataset needs handling for missing values and outlier treatment for deeper analysis.

---

## Libraries Used

- Python 3.8+
- `pandas`
- `numpy`
- `seaborn`
- `matplotlib`

---


## Project Structure

- `train.csv` — Titanic dataset file
- `Task5.ipynb` — Jupyter Notebook with complete code
- `Task5.pdf` — Summary PDF report of findings
- `README.md` — Project overview (this file)

---

## 🙌 Acknowledgment

This project was completed as part of my **Data Analyst Internship Task (Task 5)** focusing on real-world EDA skills.


