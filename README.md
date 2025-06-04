# task-6
📄 README – Monthly Sales Summary
📁 Dataset:
File: Online Sales Data.csv
Table: online sales data

🎯 Purpose:
To analyze monthly sales performance for the year 2024.

✅ Tasks:
Full-Year Summary:

Shows total revenue and number of unique orders per month in 2024.

Recent 3-Month Summary:

Displays the latest 3 months of revenue and order data from 2024.

📌 Key Columns Used:
Date

Transaction ID

Total Revenue

⚙️ Methods:
Used EXTRACT(YEAR/MONTH FROM Date)

Used SUM() for revenue

Used COUNT(DISTINCT Transaction ID) for volume

Grouped by year and month
