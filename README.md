# <img src="https://user-images.githubusercontent.com/74038190/213844263-a8897a51-32f4-4b3b-b5c2-e1528b89f6f3.png" width="50px" /> &nbsp; Predicting CGPA using MLRM  &nbsp; <img src="https://user-images.githubusercontent.com/74038190/213844263-a8897a51-32f4-4b3b-b5c2-e1528b89f6f3.png" width="50px" /> 


<a href="https://github.com/Anmol-Baranwal/GIFs-For-Readme"><img src="https://forthebadge.com/images/badges/built-with-love.svg" width="130" alt="made with love  markdown badge" ></a> 

This project explores what affects university students' CGPA based on data we collected ourselves through **face-to-face surveys**. We asked students about their study habits, screen time, sleep, stress, and more — then analyzed how these factors relate to academic performance.


## 🗂 Dataset
Training Data: hfinal.csv
Testing Data: final.csv
Sample Size: 50+ university students
Data was collected in person, ensuring authenticity and diversity across responses.


Each row represents a student. Columns include things like:

* `Exampreperday`: Hours spent preparing for exams daily
* `Studyhoursperweek`: Weekly study hours
* `SGPA` / `PreviousSGPA`: Semester GPAs
* `Weeklyscreentime`: Hours of screen time
* `academicsatisfactionrating`, `Stressrating`, etc.
  
<img src="https://github.com/Anmol-Baranwal/Cool-GIFs-For-GitHub/assets/74038190/f5384ba2-bf78-4be4-94be-4559c1827245" width="400">
<br><br>
## What the Code Does
<img src="https://github.com/Anmol-Baranwal/Cool-GIFs-For-GitHub/assets/74038190/7bb1e704-6026-48f9-8435-2f4d40101348" width="75">&nbsp;

### 1. Load the Data

Reads both training and testing CSVs and stores them as data frames.

### 3. Visualizations

   <img src="https://github.com/Anmol-Baranwal/Cool-GIFs-For-GitHub/assets/74038190/7cc5988c-f607-4d4f-ab01-360a4f9321eb" width="75">&nbsp;
Lots of them:

* **Scatter plots** to see how each variable correlates with CGPA
* **Histograms** to check distributions
* **Boxplots** to catch outliers
* **Pie charts** for categorical variables like stress and relaxation habits
* **Bar plots** for frequency of responses

Plots are grouped in grids using `par(mfrow=...)` for easier comparison.

### 4. Multiple Linear Regression (MLRM)

Builds a model to predict CGPA using:

```r
lm(CGPA ~ SGPA + Weeklyscreentime + academicsatisfactionrating + PreviousSGPA)
```

We check the model summary to find which variables are significant (based on p-values).

Then we use this model to predict CGPAs for new/test data.

### 5. Correlation Matrix 
  <img src="https://user-images.githubusercontent.com/74038190/226127923-0e8b7792-7b3c-462b-951b-63c96ba1a5af.gif" width="100">

Generates a correlation matrix for all variables, to spot strong/weak relationships.

## Takeaways

<img src="https://github.com/Anmol-Baranwal/Cool-GIFs-For-GitHub/assets/74038190/491e3e44-11a0-487a-b07b-717f677bbe4a" width="400">
<br><br>
SGPA, previous SGPA, and academic satisfaction were the best predictors of CGPA.
Screen time and sleep had weaker but noticeable effects.
Not everything showed a clear trend — some results were surprising, which is why we included so many visualizations.

## Why This Matters

We wanted to understand how student habits actually link to performance, based on real data — not assumptions. This could help identify what really matters when it comes to doing well academically.


