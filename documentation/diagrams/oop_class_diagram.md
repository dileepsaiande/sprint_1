\# Task 2 – OOP Class Diagram



```mermaid

classDiagram



&#x20;   class DataLoader {

&#x20;       -file\_path

&#x20;       +load\_data()

&#x20;       +validate\_file()

&#x20;   }



&#x20;   class DataWriter {

&#x20;       -file\_path

&#x20;       +write\_data()

&#x20;       +save\_csv()

&#x20;       +save\_json()

&#x20;   }



&#x20;   class LoggerManager {

&#x20;       -logger

&#x20;       +log\_info()

&#x20;       +log\_error()

&#x20;   }



&#x20;   class DatabaseConnector {

&#x20;       -connection

&#x20;       +connect()

&#x20;       +close()

&#x20;   }



&#x20;   class ConfigManager {

&#x20;       -config

&#x20;       +get\_config()

&#x20;       +set\_config()

&#x20;   }



&#x20;   class EmployeeManager {

&#x20;       +add\_employee()

&#x20;       +update\_employee()

&#x20;       +delete\_employee()

&#x20;   }



&#x20;   class AdvancedEmployeeManager {

&#x20;       -loader

&#x20;       -writer

&#x20;       -logger

&#x20;       -database

&#x20;       -config

&#x20;       +process\_employee()

&#x20;   }



&#x20;   EmployeeManager <|-- AdvancedEmployeeManager



&#x20;   AdvancedEmployeeManager \*-- DataLoader

&#x20;   AdvancedEmployeeManager \*-- DataWriter

&#x20;   AdvancedEmployeeManager \*-- LoggerManager

&#x20;   AdvancedEmployeeManager \*-- DatabaseConnector

&#x20;   AdvancedEmployeeManager \*-- ConfigManager

