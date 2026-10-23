# 🏦 Bank Loan Analysis Dashboard | SQL & Tableau

## 📌 Project Overview

The **Bank Loan Analysis Dashboard** is a data analytics project designed to analyze bank loan applications, funded amounts, repayments, interest rates, and borrower financial information.

This project uses **SQL for data analysis and Tableau for interactive visualization** to help understand lending performance, monitor loan portfolio health, and identify trends in loan applications and repayments.

## 🎯 Project Objectives

- Analyze total loan applications and funded amounts.
- Track the total amount received from borrowers.
- Compare Month-to-Date (MTD) and Previous Month-to-Date (PMTD) performance.
- Analyze good loans and bad loans based on loan status.
- Monitor average interest rates and Debt-to-Income (DTI) ratios.
- Identify monthly trends in loan applications and repayments.
- Analyze lending activity across states, loan terms, employment lengths, and loan purposes.
- Understand loan distribution by home ownership.

## 🛠️ Tools & Technologies

- **SQL:** Data querying, aggregation, filtering, and KPI calculations.
- **Tableau:** Interactive dashboards and data visualization.
- **Excel / CSV:** Data storage and input data, where applicable.

## 📊 Dashboard Details

### 1. Summary Dashboard

Provides an overview of key loan performance indicators.

**Key Performance Indicators (KPIs):**
- Total Loan Applications
- Month-to-Date Loan Applications
- Total Funded Amount
- Month-to-Date Total Funded Amount
- Total Amount Received
- Month-to-Date Total Amount Received
- Average Interest Rate
- Average Debt-to-Income Ratio

**Good Loan vs. Bad Loan Analysis:**

Good loans include loans with the status `Fully Paid` or `Current`.

Bad loans include loans with the status `Charged Off`.

The dashboard analyzes loan applications, funded amounts, amounts received, and percentages for these categories.

### 2. Overview Dashboard

Provides a visual analysis of loan performance across different categories.

**Visualizations include:**
- Monthly Trends: Loan applications, funded amounts, and amounts received.
- State Analysis: Lending performance by state.
- Loan Term Analysis: Distribution of loans by term.
- Employee Length Analysis: Lending activity by employment length.
- Loan Purpose Analysis: Loan distribution by purpose.
- Home Ownership Analysis: Lending activity by home ownership category.

### 3. Details Dashboard

Provides a consolidated view of loan-related information to support detailed analysis of the loan portfolio and borrower profiles.

## 🧮 SQL Analysis

SQL queries are used to calculate key metrics, including:

- `COUNT()` for total loan applications.
- `SUM()` for funded amounts and amounts received.
- `AVG()` for average interest rates and DTI ratios.
- `GROUP BY` for category-based analysis.
- `WHERE` for filtering loan records.
- Conditional aggregation for good loan and bad loan KPIs.
- Date-based filtering for monthly performance comparisons.

## 💡 Business Value

This project demonstrates how data analytics can help financial institutions:

- Monitor lending performance.
- Understand loan repayment patterns.
- Evaluate the proportion of charged-off loans.
- Identify trends in lending activity.
- Compare loan performance across borrower categories.
- Support data-driven lending and portfolio management decisions.

## 📁 Project Files

The repository may contain the following project resources:

- Tableau workbook (`.twb` or `.twbx`)
- SQL query documentation
- Bank loan domain knowledge documentation
- Project problem statement
- Dashboard screenshots, if available

## 🚀 How to Use This Project

1. Clone or download this GitHub repository.
2. Open the SQL query documentation to review the analytical queries.
3. Connect the required bank loan dataset to your SQL environment, if needed.
4. Open the Tableau workbook using Tableau Desktop.
5. If prompted, reconnect the data source to the correct dataset.
6. Explore the dashboard visualizations and loan performance KPIs.

**Note:** The Tableau workbook may require the original dataset. Make sure the required data source is available before opening the dashboard.

## 📚 Key Learning Outcomes

- Writing SQL queries for business analysis.
- Calculating and interpreting financial KPIs.
- Performing good loan versus bad loan analysis.
- Comparing monthly business performance.
- Building interactive Tableau dashboards.
- Translating business requirements into data visualizations.
- Communicating analytical findings through dashboards.

## 👨‍💻 Author

**Kiran Thorat**

Data Analyst Portfolio Project

**Skills demonstrated:** SQL | Tableau | Data Analysis | Data Visualization | Business Intelligence

## 🔗 GitHub Repository

[Bank Loan Analysis Project](https://github.com/kirnthorat/Bank_loan_project)

