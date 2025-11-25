# 📘 Data Dictionary — Delivery Analytics Dataset

This document describes all variables included in the `deliveries_raw.csv` and `deliveries_clean.csv` datasets.

---

## **Original Variables**

| Variable | Type | Description |
|---------|------|-------------|
| **Order_ID** | Integer | Unique identifier assigned to each order. |
| **Distance_km** | Numeric | Distance traveled by courier in kilometers. |
| **Weather** | Categorical | Weather condition at the time of delivery (Clear, Foggy, Rainy, Snowy, Windy). |
| **Traffic_Level** | Categorical | Traffic intensity (Low, Medium, High). |
| **Time_of_Day** | Categorical | Time the delivery was made (Morning, Afternoon, Evening, Night). |
| **Vehicle_Type** | Categorical | Type of courier vehicle (Bike, Scooter, Car). |
| **Preparation_Time_min** | Numeric | Time taken to prepare the order before dispatch. |
| **Courier_Experience_yrs** | Numeric | Courier's experience in years. |
| **Delivery_Time_min** | Numeric | Total delivery time in minutes. |

---

## **Engineered Variables (Created During Data Cleaning)**

| Variable | Type | Description |
|---------|------|-------------|
| **Speed_km_per_min** | Numeric | Distance / Delivery_Time_min. Measures courier speed. |
| **Late_Delivery** | Binary (0/1) | 1 if Delivery_Time_min > threshold (default 60 mins). |
| **Delivery_Category** | Categorical | “Fast”, “Normal”, “Late” based on delivery thresholds. |

---

## **Notes**

- Missing values in `Time_of_Day`, `Experience`, and `Vehicle_Type` are handled by Jo (Data Cleaning Engineer).
- Outliers are removed using IQR (Interquartile Range) method.
- All categorical fields are converted to factors during preprocessing.

