\# Banking Management System – ER Diagram



```mermaid

erDiagram



&#x20;   CUSTOMERS {

&#x20;       INTEGER customer\_id PK

&#x20;       TEXT name

&#x20;       TEXT email

&#x20;   }



&#x20;   BRANCHES {

&#x20;       INTEGER branch\_id PK

&#x20;       TEXT branch\_name

&#x20;       TEXT city

&#x20;   }



&#x20;   ACCOUNTS {

&#x20;       INTEGER account\_id PK

&#x20;       INTEGER customer\_id FK

&#x20;       INTEGER branch\_id FK

&#x20;       TEXT account\_type

&#x20;       REAL balance

&#x20;   }



&#x20;   TRANSACTIONS {

&#x20;       INTEGER transaction\_id PK

&#x20;       INTEGER account\_id FK

&#x20;       REAL amount

&#x20;       TEXT transaction\_type

&#x20;   }



&#x20;   LOANS {

&#x20;       INTEGER loan\_id PK

&#x20;       INTEGER customer\_id FK

&#x20;       REAL loan\_amount

&#x20;       TEXT loan\_type

&#x20;   }



&#x20;   CUSTOMERS ||--o{ ACCOUNTS : owns

&#x20;   BRANCHES ||--o{ ACCOUNTS : manages

&#x20;   ACCOUNTS ||--o{ TRANSACTIONS : contains

&#x20;   CUSTOMERS ||--o{ LOANS : takes

