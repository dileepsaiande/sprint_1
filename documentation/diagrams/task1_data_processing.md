\# Task 1 – Data Processing Flow



```mermaid

flowchart LR



&#x20;   A\[Input Files] --> B{Data Loader}



&#x20;   B --> C\[CSV]

&#x20;   B --> D\[JSON]

&#x20;   B --> E\[TXT]



&#x20;   C --> F\[Employee Data]

&#x20;   D --> F

&#x20;   E --> F



&#x20;   F --> G\[Data Processing]



&#x20;   G --> H{Data Writer}



&#x20;   H --> I\[CSV Output]

&#x20;   H --> J\[JSON Output]

&#x20;   H --> K\[Pickle Output]

&#x20;   H --> L\[TXT Output]



&#x20;   G --> M\[Logging]

&#x20;   G --> N\[Exception Handling]

&#x20;   N --> O\[Custom Exceptions]

