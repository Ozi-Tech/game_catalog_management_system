# Game Catalog Management System

## Overview
Developed a comprehensive database system for managing a video game catalog, integrating Oracle SQL for backend management with a Microsoft Access frontend for user-friendly interaction and reporting.

## Technologies Used
- Oracle SQL
- PL/SQL
- Microsoft Access

## Features
- Relational database schema design for optimal data storage and retrieval.
- Advanced data manipulation using PL/SQL triggers to maintain data integrity.
- User-friendly data entry, modification, and reporting through MS Access.

# How to Use
## Setup Guide

Welcome to the Game Catalog Management System, a comprehensive Oracle SQL database project integrated with Microsoft Access for managing a video game catalog. Follow the steps below to set up the database and connect it to MS Access.

### Prerequisites

- Oracle SQL Developer installed
- Microsoft Access
- ODBC Data Source Administrator (64-bit or 32-bit, depending on your MS Access version)

### Step 1: Clone the Repository

Clone this repository to your local machine to access all the SQL scripts and project files.

### Step 2: Creating the Database Schema in SQL Developer

1. **Open SQL Developer** and connect to your Oracle database.
2. **Run the Table Scripts**: Navigate to the `schema` folder and execute the SQL scripts in the following order:
   - `publisher.sql`
   - `platform.sql`
   - `game.sql`
   - `copy.sql`
   - `game_publisher.sql`
   - `game_platform.sql`
   - `game_copy.sql`

This creates the tables and establishes the relationships necessary for the database.

Alternatively, all the table scripts are available in the `tables` file

### Step 3: Populate the Database

After creating the tables, populate them with initial data:

1. Go to the `sample_inserts` file.
2. Run each `insert` script to add data to your tables.

### Step 4: Implementing Sequences, Triggers and Views

1. Execute the `sequences` script to create the necessary sequences.
2. Navigate to the `triggers` folder.
3. Execute each PL/SQL trigger script to enable advanced data integrity and manipulation functionalities.
4. Execute the `views.sql` script to create the necessary views for the project.

### Step 5: Connecting to MS Access via ODBC

1. **Open ODBC Data Source Administrator** on your computer.
2. Under the **System DSN** tab, click **Add**.
3. Choose the Oracle driver from the list and click **Finish**.
4. Enter the **Data Source Name**, your Oracle **Database Name**, **Username**, and **Password**.
5. Test the connection to ensure it's set up correctly.

### Step 6: Importing into MS Access

1. Open MS Access and choose **Blank Database**.
2. Select **External Data** > **ODBC Database**.
3. Choose **Link to the data source by creating a linked table** and click **OK**.
4. Select the DSN you created in Step 5 and follow the prompts to import/link your Oracle tables into MS Access.

### Conclusion

You've now successfully set up the Game Catalog Management System in Oracle SQL Developer and connected it to MS Access via ODBC. Explore your data in MS Access, and utilize the forms and reports for data interaction.

## License
MIT License
