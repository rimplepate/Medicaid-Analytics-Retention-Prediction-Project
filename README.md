# 🏥 Medicaid Eligibility & Member Retention Analytics Platform

# 📌 Project Overview

This project simulates an end-to-end healthcare analytics solution designed to improve Medicaid eligibility processing, identify care gaps, and reduce member disenrollment through data-driven insights.

The solution integrates data engineering, analytics, visualization, and machine learning to replicate real-world healthcare reporting and decision-making workflows.

# 🎯 Business Objectives

* Reduce eligibility processing time and identify operational bottlenecks
* Analyze preventive care gaps using HEDIS metrics
* Detect high-risk populations for Medicaid disenrollment
* Evaluate outreach campaign effectiveness (SMS vs Email)
* Identify healthcare access disparities across regions

# 🛠️ Tech Stack

**SQL** – Data analysis and transformation
**Python (Pandas, Scikit-learn)** – Data processing & machine learning
**Tableau Public** – Interactive dashboards
**GeoPandas** – Geospatial analysis
**Excel/CSV** – Data storage



# 📂 Dataset Description

The project uses a synthetic dataset of **50,000+ Medicaid members**, including:

* `members` – Demographics & enrollment data
* `eligibility_transactions` – Application processing details
* `clinical_data` – HEDIS care metrics (A1C, BMI, screenings)
* `sdoh_data` – Social determinants of health
* `outreach_campaign` – Engagement & renewal tracking
* `geo_health_access` – Healthcare access indicators

# 🔄 Data Pipeline (Simulated)

Data ingestion and transformation using Python & SQL
Standardization of patient data (FHIR-aligned structure)
Integration of multiple datasets into a unified analytics layer

# 📊 Dashboard 1: Eligibility Pipeline

**Key Insights:**

Identified counties with high processing delays
Measured approval rates and application volumes
Highlighted operational inefficiencies

# 📊 Dashboard 2: Care Gap & Health Equity

**Key Insights:**

Detected disparities in A1C, BMI, and screening compliance
Identified lower preventive care rates among Spanish-speaking populations
Highlighted health equity gaps across race and socioeconomic factors

---

# 📊 Dashboard 3: Retention & Outreach Effectiveness

**Key Insights:**

SMS campaigns showed significantly higher response rates than email
Identified high-risk disenrollment groups (low income, unstable housing)
Enabled targeted outreach strategies to improve retention

---

## 🤖 Machine Learning Model

Built a **Logistic Regression model** to predict Medicaid renewal likelihood
Features used:

  * Outreach type (SMS/Email)
  * Language
  * Income level
  * Housing status
  * Transportation access

**Performance:**

* Achieved ~80% precision
* Successfully identified high-risk members for disenrollment

# 📈 Key Business Impact

* Simulated reduction in eligibility processing time
* Improved understanding of healthcare disparities
* Enabled data-driven outreach strategies
* Identified underserved populations for intervention

---

# 📸 Project Tableau Dashboard Link:- https://public.tableau.com/views/EligibilityPipeline/RetentionOutreachEffectiveness?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

# 🚀 How to Run This Project

1. Clone the repository
2. Open dataset files (CSV)
3. Run Python notebook for ML model
4. Open Tableau Public and connect to datasets
5. Explore dashboards

# 💡 Future Enhancements

Integrate real-time data pipeline (Azure Data Factory simulation)
Deploy model using Flask or Streamlit
Add advanced ML models (Random Forest, XGBoost)
Expand geospatial analysis with interactive maps

# 👩‍💻 Author

**Rimple Patel**
Aspiring Data Analyst | Healthcare Analytics | SQL | Tableau | Python

# ⭐ Why This Project Stands Out

This project demonstrates:

* End-to-end analytics workflow
* Strong business problem-solving
* Healthcare domain expertise
* Data storytelling and visualization
* Machine learning application in real-world scenarios

# 📬 Let’s Connect

If you're a recruiter or hiring manager, feel free to reach out!
