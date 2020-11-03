# SQL

### What is a database?
- Collection of data in a format of easily accesibility
    - Retrive
    - Insert
    - Delete
    - Change

### Database Managment System (DBMS)
- Database Engine (Motor de base de datos) 
    - Software that allows us to communicate with it through instructions in order fetch, insert, delete, update data.

tb.1
![table 1](data/bbdd.png)

_Data stored in table format is known as tabular data_

### Table
- Records (rows) in a table have an unique identifier, called **Primary Key**.
- A record on a table may relate with data of a different table, through the primary key of the second table. This is know as **Foreign Key**.

### Therefore
A database with tables that relate with each other is a
### **RELATIONAL DATABASE**

## Types of Databases
- Relational databases engines
    - MySQL *
    - Oracle
    - Microsoft SQL Server
    - PostgreSQL
    - SQLite
    - MariaDB
    - etc...
- Non relational databases (noSQL) engines
    - mongoDB
    - IBM Domino
    - Couchbase
    - ObjectDB
    - Amazon DynamoDB
    - etc...

```
MySQL -> DBMS
MySQL Workbench -> GUI (Graphical User Interface)
SQL -> Programming Language
```

## SQL
- SQL or "SEQUEL".
- Structures Query Language

#### Types of programming language
- Functional
- Object-Oriented
- Procedural (Imperative) [HOW]
- Declarative (Non Procedural) [WHAT] *

"In SQL, all that matter is `WHAT` we want, not `HOW` it's done"

-----

## Designing Databases

Designing databases is an art form of it's own, but for some applications, we ourselves will have to do it.

We can divide it into two main points:

### Tables
- Each table must contain data on a specific type of "object", e.g.: user, customer, sale, car, product, invoice, publisher, etc.
- The columns represent the fields ("characteristics") we want to record. `REMEMBER: `This information should be information related to that object and "non-calculable". Store `date_of_birth` instead of `age`. Age changes and we don't want to have to update our database all the time. Also don't record things such as `number_of_purchases`, unless necessary. This is information that derives from other columns and tables. ;)
- Give descriptive names
- Remember Primary Keys
- Set columns attributes PK, NN, AI, Default
    - Primary Key
    - Not Null
    - Auto Increment
    - Default value

### Relations
There are different kinds of relations, but first, let's remember a few concepts.

- Primary key

Is the unique identifying column on a table.

- Foreign key

Primary key "borrowed" on the second table to relate them.

- Parent table

The "og" original owner of the primary key.

- Child table

The table that borrows a key from parent

- Identifying relation

Foreign key is part of child table primary keys

- Non identifying relation

Foreign key is not part of child tabler primary key

## Types of relations 
- 1:1
    - These relations are like splitting a table into two. It allows us to have less columns on a particular table. Also useful in cases where we expect columns to have lots of nulls, this way we can only have records for these columns for not null data on a different table.
- 1:n
    - Allows us to have one record of parent table on multiple records of child table. 
- m:n
    - Creates intermediate table, child of both tables we want to connect.
    - Relations are 1:n between parent and child.
    - Usually identifying relationship

```
Each table may have multiple parents and multiple children.
```

----
## In class resources

You will find the diagram for the DB we designed in class on `data/web_store.mwb`

You will also find the script for creating such database on `w3d2-create_sara.sql`

----
## Further Materials

[Sally Sequel](https://www.youtube.com/watch?v=27axs9dO7AE), the lego SQL DBMS. ;)