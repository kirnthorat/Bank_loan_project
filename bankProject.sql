CREATE TABLE financial_loan (
    id INT,
    address_state VARCHAR(10),
    application_type VARCHAR(50),
    emp_length VARCHAR(30),
    emp_title VARCHAR(100),
    grade VARCHAR(5),
    home_ownership VARCHAR(30),
    issue_date DATE,
    last_credit_pull_date DATE,
    last_payment_date DATE,
    loan_status VARCHAR(50),
    next_payment_date DATE,
    member_id BIGINT,
    purpose VARCHAR(100),
    sub_grade VARCHAR(5),
    term VARCHAR(20),
    verification_status VARCHAR(50),
    annual_income BIGINT,
    dti DECIMAL(10,2),
    installment DECIMAL(10,2),
    int_rate DECIMAL(6,3),
    loan_amount BIGINT,
    total_acc INT,
    total_payment BIGINT
);

select * from financial_loan; 

-- Total Loan Applications
SELECT COUNT(id) AS Total_Applications 
FROM financial_loan;

-- MTD Loan Applications
SELECT COUNT(id) AS Total_Applications 
FROM financial_loan 
WHERE extract(MONTH from issue_date) = 12;

-- PMTD Loan Applications
SELECT COUNT(id) AS Total_Applications 
FROM financial_loan
WHERE extract (MONTH from issue_date) = 11;

-- Total Funded Amount
SELECT SUM(loan_amount) AS Total_Funded_Amount 
FROM financial_loan;

-- MTD Total Funded Amount
SELECT SUM(loan_amount) as Total_Funded_Amount
from financial_loan
where extract (Month from issue_date) =12;

-- PMTD Total Funded Amount
SELECT  SUM(loan_amount) as Total_Funded_Amount
from financial_loan
where extract ( Month from issue_date)=11;


-- Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_Collected 
FROM financial_loan;


-- MTD Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_Collected 
FROM financial_loan
WHERE extract(MONTH from issue_date) = 12;

-- PMTD Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_Collected 
FROM financial_loan 
WHERE extract(MONTH from issue_date) = 11;


-- Average Interest Rate
SELECT AVG(int_rate)*100 AS Avg_Int_Rate 
FROM financial_loan; 

-- MTD Average Interest
SELECT AVG(int_rate)*100 AS MTD_Avg_Int_Rate 
FROM financial_loan 
WHERE extract(MONTH from issue_date) = 12;

-- PMTD Average Interest
SELECT AVG(int_rate)*100 AS PMTD_Avg_Int_Rate
FROM financial_loan 
WHERE extract(MONTH from issue_date) = 11;

-- Avg DTI
SELECT AVG(dti)*100 AS Avg_DTI 
FROM financial_loan; 

-- MTD Avg DTI
SELECT AVG(dti)*100 AS MTD_Avg_DTI 
FROM financial_loan 
WHERE extract(MONTH from issue_date) = 12;

-- PMTD Avg DTI
SELECT AVG(dti)*100 AS PMTD_Avg_DTI 
FROM financial_loan
WHERE extract (MONTH from issue_date) = 11;


-- Good Loan Percentage
SELECT
    (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100.0) / 
	COUNT(id) AS Good_Loan_Percentage
FROM financial_loan; 

-- Good Loan Applications
SELECT COUNT(id) AS Good_Loan_Applications 
FROM financial_loan 
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current';

-- Good Loan Funded Amount
SELECT SUM(loan_amount) AS Good_Loan_Funded_amount 
FROM financial_loan 
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

-- Bad Loan Percentage
SELECT
    (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0) / 
	COUNT(id) AS Bad_Loan_Percentage
FROM financial_loan; 

-- Bad Loan Applications
SELECT COUNT(id) AS Bad_Loan_Applications 
FROM financial_loan
WHERE loan_status = 'Charged Off';

-- Bad Loan Funded Amount
SELECT SUM(loan_amount) AS Bad_Loan_Funded_amount
FROM financial_loan
WHERE loan_status = 'Charged Off';

-- Bad Loan Amount Received
SELECT SUM(total_payment) AS Bad_Loan_amount_received 
FROM financial_loan
WHERE loan_status = 'Charged Off';


-- LOAN STATUS
	SELECT
        loan_status,
        COUNT(id) AS LoanCount,
        SUM(total_payment) AS Total_Amount_Received,
        SUM(loan_amount) AS Total_Funded_Amount,
        AVG(int_rate * 100) AS Interest_Rate,
        AVG(dti * 100) AS DTI
    FROM
        financial_loan
    GROUP BY
        loan_status;


SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM financial_loan
WHERE extract (MONTH from issue_date) = 12 
GROUP BY loan_status;


-- BANK LOAN REPORT | OVERVIEW
-- MONTH
SELECT 
    EXTRACT(MONTH FROM issue_date) AS month_number, 
    TO_CHAR(issue_date, 'Month') AS month_name, 
    COUNT(id) AS total_loan_applications,
    SUM(loan_amount) AS total_funded_amount,
    SUM(total_payment) AS total_amount_received
FROM financial_loan
GROUP BY EXTRACT(MONTH FROM issue_date), TO_CHAR(issue_date, 'Month')
ORDER BY month_number;



-- STATE
SELECT 
	address_state AS State, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan 
GROUP BY address_state
ORDER BY address_state;


-- TERM
SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM Financial_loan 
GROUP BY term
ORDER BY term;


-- EMPLOYEE LENGTH
SELECT 
	emp_length AS Employee_Length, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan 
GROUP BY emp_length
ORDER BY emp_length;

-- PURPOSE
SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY purpose
ORDER BY purpose;

-- HOME OWNERSHIP
SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan 
GROUP BY home_ownership
ORDER BY home_ownership;



