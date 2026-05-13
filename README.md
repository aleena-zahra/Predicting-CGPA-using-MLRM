# <img src="https://user-images.githubusercontent.com/74038190/213844263-a8897a51-32f4-4b3b-b5c2-e1528b89f6f3.png" width="50px" /> &nbsp; Predicting CGPA using MLRM  &nbsp; <img src="https://user-images.githubusercontent.com/74038190/213844263-a8897a51-32f4-4b3b-b5c2-e1528b89f6f3.png" width="50px" /> 

## Overview

This project applies Multiple Linear Regression (MLR) techniques to predict student CGPA (Cumulative Grade Point Average) from academic and demographic factors. The approach showcases the utility of statistical modeling in educational data mining.

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


## Project Significance

- **Early Intervention:** Enables institutions to flag students at risk of poor academic outcomes and offer timely support.
- **Performance Analytics:** Highlights key predictors affecting CGPA, aiding curricular and policy adjustments.
- **Model Transparency:** Demonstrates the interpretability and practicality of regression-based approaches for educational stakeholders.

## Features

- **Data Preparation:** Cleans and preprocesses input features relevant to CGPA.
- **Model Building:** Trains and evaluates MLRM to estimate academic performance.
- **Result Interpretation:** Analyzes coefficients and identifies factors with the strongest impact.

## Usage

1. **Clone the repository:**
    ```bash
    git clone https://github.com/aleena-zahra/Predicting-CGPA-using-MLRM.git
    ```
2. **Open the R scripts in RStudio or another R-compatible IDE.**
3. **Install Dependencies:** Commonly used packages include `stats`, `tidyverse`, `caret`, etc.
4. **Run the analysis** as detailed in the script.

## Contributing

Feedback and extension ideas (e.g., adding more features, trying new models) are appreciated.

## License

Released under the MIT License. See `LICENSE` for details.


