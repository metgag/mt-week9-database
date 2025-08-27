# normalization
### 1. 1NF (first normal form)
| **loan_id** | **member_id** | **member_name** | **book_isbn** | **book_title** | **author** | **loan_date** | **due_date** | **fee** |
|---|---|---|---|---|---|---|---|---|
| L1001 | M201 | Alice Chen | 978-1234567890 | The Great Novel | A. Author | 2023-10-01 | 2023-10-15 | 0.00 |
| L1002 | M202 | Bob Smith | 978-0987654321 | Database Fundamentals | B. Writer | 2023-10-02 | 2023-10-16 | 2.50 |
| L1003 | M201 | Alice Chen | 978-5555555555 | History of Things | C. Historian | 2023-10-05 | 2023-10-10 | 0.00 |
| L1004 | M201 | Alice Chen | 978-0987654321 | Database Fundamentals | B. Writer | 2023-10-10 | 2023-10-24 | 0.00 |

### 2. 2NF
| **member_id** | **member_name** |
|---|---|
| M201 | Alice Chen |
| M202 | Bob Smith |

| **book_isbn** | **book_title** | **author** |
|---|---|---|
| 978-1234567890 | The Great Novel | A. Author |
| 978-0987654321 | Database Fundamentals | B. Writer |
| 978-5555555555 | History of Things | C. Historian |

| **loan_id** | **member_id** | **book_isbn** | **loan_date** | **due_date** | **fee** |
|---|---|---|---|---|---|
| L1001 | M201 | 978-1234567890 | 2023-10-01 | 2023-10-15 | 0.00 |
| L1002 | M202 | 978-0987654321 | 2023-10-02 | 2023-10-16 | 2.50 |
| L1003 | M201 | 978-5555555555 | 2023-10-05 | 2023-10-10 | 0.00 |
| L1004 | M201 | 978-0987654321 | 2023-10-10 | 2023-10-24 | 0.00 |

### 3. 3NF
| **member_id** | **member_name** |
|---|---|
| M201 | Alice Chen |
| M202 | Bob Smith |

| **loan_id** | **member_id** | **book_isbn** | **loan_date** | **due_date** | **fee** |
|---|---|---|---|---|---|
| L1001 | M201 | 978-1234567890 | 2023-10-01 | 2023-10-15 | 0.00 |
| L1002 | M202 | 978-0987654321 | 2023-10-02 | 2023-10-16 | 2.50 |
| L1003 | M201 | 978-5555555555 | 2023-10-05 | 2023-10-10 | 0.00 |
| L1004 | M201 | 978-0987654321 | 2023-10-10 | 2023-10-24 | 0.00 |

| **book_isbn** | **book_title** | **author_id** |
|---|---|---|
| 978-1234567890 | The Great Novel | 1111 |
| 978-0987654321 | Database Fundamentals | 2222 |
| 978-5555555555 | History of Things | 3333 |

| **author_id** | **author_name** |
|---|---|
| 1111 | A. Author |
| 2222 | B. Writer |
| 3333 | C. Historian |