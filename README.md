# DVDRENTAL-POSTGRES-SAMPLE-DB
This is a dockerfile to deploy easily the sample database from [postgresqltutorial.com](https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/).

## DB info
- **address:** localhost
- **username:** postgres
- **database name:** dvdrental
- **default password:** dvdrental
- **ER diagram:**![](dvd-rental-sample-database-diagram.png)
## Usage
First steps:
  1. [Install Docker](https://docs.docker.com/engine/install/) if it's not installed
  2. Build the image (recommended) or pull it from [dockerhub](https://hub.docker.com/repository/docker/g4li0/dvdrental/general):
  ```bash
    # build the image
    docker build -t dvdrental .
    # pull the image
    docker pull g4li0:dvdrental
  ```
  
  Run de container
  ```bash
   docker run --name dvd -p 5432:5432 -d dvdrental
  ```
  Now you can enter to database with credentials on "DB info" using DBeaver or other SQL clients.

  Stop the container
  ```bash
  docker stop dvd
  ```
  Start the container after stop
  ```bash
  docker start dvd
  ```