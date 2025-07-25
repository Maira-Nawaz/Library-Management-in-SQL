# Library-Management-in-SQL

## Project Overview

This project involves building a **Library Management System** using SQL. It covers the end-to-end process of database creation, CRUD operations, generating summary tables using CTAS, and performing advanced SQL queries to analyze library data and operations.



## Objectives

- Set up a relational database for managing library resources.
- Perform **CRUD** (Create, Read, Update, Delete) operations on library data.
- Use **CTAS (Create Table As Select)** for creating analytical summary tables.
- Execute **advanced SQL queries** for reporting and data-driven decision-making.



## Database Schema

The following relational tables were created:

| Table Name      | Description |
|----------------|-------------|
| `branches`      | Stores library branch information |
| `employees`     | Stores employee details linked to branches |
| `members`       | Stores library member details |
| `books`         | Stores book details |
| `issued_status` | Tracks issued books by members |
| `return_status` | Tracks returned books |

**Relationships:**
- `employees` are assigned to `branches`
- `issued_status` is linked to `members` and `employees`
- `return_status` is linked to `issued_status`

---

## CRUD Operations

| Task | Description |
|------|-------------|
| **Task 1** | Insert a new book record into the `books` table |
| **Task 2** | Update an existing member’s address |
| **Task 3** | Delete a record from the `issued_status` table |
| **Task 4** | Retrieve all books issued by a specific employee |
| **Task 5** | List members who issued more than one book |

---

## CTAS (Create Table As Select)

| Task | Description |
|------|-------------|
| **Task 6** | Create summary tables showing each book and the total number of times it has been issued using `CTAS` |

---

## Data Analysis & Reporting

| Task | Description |
|------|-------------|
| **Task 7** | Retrieve all books in a specific category |
| **Task 8** | Calculate total rental income grouped by book category |
| **Task 9** | List members who registered within the last 180 days |
| **Task 10** | List employees along with their branch manager and branch details |
| **Task 11** | Create a table of books with rental prices above a given threshold |
| **Task 12** | Retrieve the list of books that have not yet been returned |


## Tools Used

* SQL (MySQL)

## Conclusion

This project demonstrates how structured database systems and SQL can be used to efficiently manage and analyze library operations. The modular design ensures easy extension and integration with GUI apps or dashboards in the future.


##  Author

*Maira Nawaz*

[LinkedIn](https://www.linkedin.com/in/mairanawaz/) | [Kaggle](https://www.kaggle.com/mairanawaz) | [Github](https://github.com/Maira-Nawaz)

