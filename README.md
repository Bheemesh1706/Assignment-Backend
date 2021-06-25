# DOCUMENTATION

## About

This is the backend API for the calendar management app which deals with the CRUD operations, User authentication as well as the Session management for the web app. 

### Environment Setup

- Ruby version: 3.0.1
- Rails version: 6.1.3
- Database: mysql

### Local deployment setup instruction

```
git clone https://github.com/Bheemesh1706/Assignment-Backend.git
cd Assignment-Backend
bundle update
bundle install
rails s
```

### Local Databse setup
Follow this documentation to install mysql database in your linux system
[MYSQL DOCUMENTATION](https://dev.mysql.com/doc/mysql-installation-excerpt/8.0/en/windows-install-archive.html)

Update your databse username & password in the [database.yml](/config/database.yml) file

### Commands to setup the database for Rails
```
rails db:create
rails db:migrate
```

### Core setup instruction
Change the origin field value to `*` in [cors.rb](config/initializers/cors.rb) for local deployment

