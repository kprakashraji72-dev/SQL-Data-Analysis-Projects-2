[README.md](https://github.com/user-attachments/files/25731965/README.md)
# 🛒 SQL Sales Data Analysis Project

A end-to-end SQL project that designs a relational sales database, inserts sample data, and performs real-world business analysis using MySQL.

---

## 👤 Author
**Prakashraji K**  
B.Tech – Information Technology | Mahendra Engineering College  
📧 kprakashraji72@gmail.com | 🔗 [LinkedIn](https://linkedin.com/in/prakashraji)

---

## 📌 Project Overview

This project demonstrates core SQL skills by building a complete sales database system from scratch and extracting business insights through structured queries.

### Key Objectives:
- Design a normalized relational database for sales data
- Populate it with realistic sample data
- Perform business analysis using SQL queries
- Create reusable Views and Stored Procedures

---

## 🗂️ Project Structure

```
sales-data-analysis/
│
├── data/
│   └── sales_data.csv               # Sample sales dataset (CSV)
│
├── queries/
│   ├── 01_schema.sql                # Database & table creation
│   ├── 02_insert_data.sql           # Sample data insertion
│   └── 03_analysis_queries.sql      # Business analysis queries
│
├── views/
│   └── 04_views_and_procedures.sql  # Views & Stored Procedures
│
└── README.md
```

---

## 🧱 Database Schema

| Table         | Description                          |
|---------------|--------------------------------------|
| `customers`   | Customer details and location info   |
| `products`    | Product catalog with pricing         |
| `orders`      | Order header with date and status    |
| `order_items` | Line items linking orders & products |

### Entity Relationship:
```
customers ──< orders ──< order_items >── products
```

---

## 📊 Analysis Performed

| # | Analysis                          | SQL Concepts Used                        |
|---|-----------------------------------|------------------------------------------|
| 1 | Total Revenue Generated           | SUM, Aggregate Function                  |
| 2 | Revenue by Product Category       | INNER JOIN, GROUP BY, SUM                |
| 3 | Top 5 Best-Selling Products       | JOIN, GROUP BY, ORDER BY, LIMIT          |
| 4 | Monthly Sales Trend               | DATE_FORMAT, GROUP BY, ORDER BY          |
| 5 | Top Customers by Total Spend      | Multi-table JOIN, GROUP BY, ORDER BY     |
| 6 | Revenue by State (Regional)       | JOIN, GROUP BY, SUM                      |
| 7 | Average Order Value               | AVG, Subquery                            |
| 8 | Products Never Ordered            | LEFT JOIN, WHERE IS NULL                 |
| 9 | Orders Above Average Value        | HAVING, Subquery                         |
|10 | Yearly Revenue Comparison         | YEAR(), GROUP BY                         |

---

## 🔍 Views Created

| View Name                   | Purpose                              |
|-----------------------------|--------------------------------------|
| `vw_product_sales_summary`  | Aggregated revenue per product       |
| `vw_customer_order_summary` | Order history & spend per customer   |
| `vw_monthly_revenue`        | Month-wise revenue trend             |

---

## ⚙️ Stored Procedures

| Procedure               | Parameters         | Description                          |
|-------------------------|--------------------|--------------------------------------|
| `GetSalesByCategory`    | `p_category`       | Fetches sales for a given category   |
| `GetCustomerHistory`    | `p_customer_id`    | Fetches full order history of a customer |

**Usage Examples:**
```sql
CALL GetSalesByCategory('Electronics');
CALL GetCustomerHistory(1);
```

---

## 🚀 How to Run

1. **Install MySQL** – [Download here](https://dev.mysql.com/downloads/mysql/)
2. **Open MySQL Workbench** or any SQL client
3. Run the files **in order**:
   ```
   01_schema.sql          → Creates the database and tables
   02_insert_data.sql     → Inserts sample data
   03_analysis_queries.sql → Runs business analysis queries
   04_views_and_procedures.sql → Creates views and stored procedures
   ```

---

## 🛠️ Tools & Technologies

- **Database:** MySQL
- **Tool:** MySQL Workbench
- **Language:** SQL
- **Concepts:** JOINs, Subqueries, GROUP BY, HAVING, ORDER BY, Aggregate Functions, Views, Stored Procedures

---

## 📈 Sample Insights

- **Top Product:** Laptop Pro 15 – highest revenue generator
- **Top State:** Tamil Nadu – most customers and highest regional revenue
- **Peak Month:** September 2023 – highest single-month revenue
- **Avg Order Value:** Calculated dynamically using subquery

---

## 📄 License
This project is open-source and available under the [MIT License](LICENSE).
