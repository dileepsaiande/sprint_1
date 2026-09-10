# Task 2 - OOP Class Diagram

```mermaid
classDiagram

class DataLoader
class DataWriter
class LoggerManager
class DatabaseConnector
class ConfigManager
class EmployeeManager
class AdvancedEmployeeManager

EmployeeManager <|-- AdvancedEmployeeManager

AdvancedEmployeeManager --> DataLoader
AdvancedEmployeeManager --> DataWriter
AdvancedEmployeeManager --> LoggerManager
AdvancedEmployeeManager --> DatabaseConnector
AdvancedEmployeeManager --> ConfigManager