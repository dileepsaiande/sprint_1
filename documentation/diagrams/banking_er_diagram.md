# Banking Management System - ER Diagram

```mermaid
erDiagram

    CUSTOMERS {
        int customerId PK
        string name
        string email
    }

    BRANCHES {
        int branchId PK
        string branchName
        string city
    }

    ACCOUNTS {
        int accountId PK
        int customerId FK
        int branchId FK
        string accountType
        float balance
    }

    TRANSACTIONS {
        int transactionId PK
        int accountId FK
        float amount
        string transactionType
    }

    LOANS {
        int loanId PK
        int customerId FK
        float loanAmount
        string loanType
    }

    CUSTOMERS ||--o{ ACCOUNTS : owns
    BRANCHES ||--o{ ACCOUNTS : manages
    ACCOUNTS ||--o{ TRANSACTIONS : has
    CUSTOMERS ||--o{ LOANS : takes