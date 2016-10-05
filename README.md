# apirest

[![](https://images.microbadger.com/badges/image/scatt89/apirest.svg)](https://microbadger.com/images/scatt89/apirest "Get your own image badge on microbadger.com")

A Docker container to run Java APIRest linked with a MySQL database

Default configurations are to:

* Expose port 8080

## Configurable ENV variables

Environment variables with defaults values:

### MYSQL_CONTAINER

Use this variable to specify the name of the database docker container. Set default to "db" value.

### MYSQL_DATABASE

The name of your database, set to "anuncios" value by default.

### USERNAME

The username for login in the database, set to "root" by default.

### PASS

The username for login in the database, set to "root" by default (the default password is discouraged).

### DLL-AUTO

The value of the dll-auto when your start the application is set default "create".

### MYSQL-PORT

MySQL port is set by default "3306" value.

### JAVA_APP

The name of your apirest application, by default, value is set "app.jar".

### Testing

```sh
$ docker run -p 8080:8080 --name app -e MYSQL_CONTAINER=db -e MYSQL_DATABASE= myDBname -e DLL-AUTO=create --link db:db scat89/apirest
```
