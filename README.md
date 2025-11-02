---

## 🧑‍💻 `feature/data-cleaning` → **Data Engineer**

### 📁 `README.md`
```markdown
# 🧑‍💻 Data Cleaning Module – Data Engineer

## 🎯 Purpose
This module handles **data collection, cleaning, and preprocessing**.  
It ensures that the input datasets are **consistent, structured, and analysis-ready**.

---

## 👨‍💻 Responsibilities
- Import and validate raw data files.
- Remove missing values, duplicates, and outliers.
- Merge multiple data sources (CSV, Excel, API).
- Standardize and normalize data formats.

---

## 📦 Required Packages
```r
install.packages(c("dplyr", "tidyr", "readr", "janitor", "stringr"))
---

📂 Folder Structure

R/data_engineering/
├── cleaning_pipeline.R
├── handle_missing.R
├── normalize_data.R
└── merge_sources.R


---

⚙️ Usage

source("R/data_engineering/cleaning_pipeline.R")
clean_data <- run_data_cleaning("data/raw/sales.csv")


---

🧠 Data Flow

data/raw  →  data_engineering/cleaning_pipeline.R  →  data/cleaned/


---

🤝 Collaboration Notes

Only modify scripts under this directory.

Save all outputs to /data/cleaned/.

Coordinate with Data Scientist for final dataset schema.
