# BasicLampApp
This is a simple PHP application that displays the records from the database. The database is a MySQL db with 1 table.
With this application you can practice containerisation technologies.

## Application Structure
The LAMP web application consists of the following files and components:

- `Dockerfile`: Dockerfile for building the PHP and Apache container.
- `docker-compose.yml`: Docker Compose configuration file for orchestrating containers.
- `.env`: Environment variables file for configuring the application.
- `schema.sql`: SQL file containing the database schema and initial data.
- PHP application files (e.g., config.php, index.php, edit.php, add.php, delete.php).

### PHP files

#### `config.php`
- This file contains basic database connection settings and establishes a connection to the MySQL database. To make the connection we can define here the parameters or using environment variables in the hostmachine or in a container. It is included in other PHP files to establish a database connection.

#### `index.php`

- This is the main page of the application that displays a table of contacts fetched from the database. On this page, the user has the option to add new contacts, modify or delete the existing ones.

#### `add.php`

- This file allows users to add new contact records to the database. Users can input the name, age, and email of the new contact.

#### `edit.php`

- This file is used to edit a contact record. It allows users to update a contact's name, age, and email.

#### `delete.php`

- This function is used to delete a contact record from the database. It takes an `id` as parameter from the query string and deletes the corresponding contact.

## Usage

- You have to build a new image from `Dockerfile`:
    ```docker build -t lamp-php:1.0 .```
- Look through the .env file and adjust it to your needs
- If everything fine, you can start the application with `docker compose up`
