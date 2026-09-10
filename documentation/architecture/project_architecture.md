\# Sprint 1 – Project Architecture



```mermaid

flowchart TD



&#x20;   A\[Input Data<br/>CSV / JSON / TXT] --> B\[Task 1<br/>Data Processing]



&#x20;   B --> C\[Data Loading]

&#x20;   B --> D\[Data Writing]

&#x20;   B --> E\[Logging]

&#x20;   B --> F\[Exception Handling]



&#x20;   C --> G\[Task 2<br/>Object Oriented Design]

&#x20;   D --> G

&#x20;   E --> G

&#x20;   F --> G



&#x20;   G --> H\[DataLoader]

&#x20;   G --> I\[DataWriter]

&#x20;   G --> J\[LoggerManager]

&#x20;   G --> K\[DatabaseConnector]

&#x20;   G --> L\[ConfigManager]



&#x20;   K --> M\[Task 3<br/>Banking Management System]



&#x20;   M --> N\[(SQLite Database)]



&#x20;   N --> O\[Customers]

&#x20;   N --> P\[Branches]

&#x20;   N --> Q\[Accounts]

&#x20;   N --> R\[Transactions]

&#x20;   N --> S\[Loans]



&#x20;   M --> T\[SQL Queries]

&#x20;   T --> U\[Joins]

&#x20;   T --> V\[Aggregations]

&#x20;   T --> W\[CTEs \& Subqueries]

&#x20;   T --> X\[Window Functions]

&#x20;   T --> Y\[Indexes \& Views]



&#x20;   G --> Z\[Task 4<br/>Utility Functions]



&#x20;   Z --> Z1\[Execution Time Decorator]

&#x20;   Z --> Z2\[File Validation]

&#x20;   Z --> Z3\[Configuration Reader]

&#x20;   Z --> Z4\[Timestamp Generator]

&#x20;   Z --> Z5\[Path Validator]

&#x20;   Z --> Z6\[Logger Helper]

&#x20;   Z --> Z7\[Database Connection Helper]



&#x20;   N --> AA\[Testing \& Verification]

&#x20;   Z --> AA

