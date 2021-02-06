# Dockerized Python Flask nginx uWSGI project

Boilerplate for dockerized Python/Flask application running on NGINX with uWSGI and hot reloading.

## Project Structure

```
.
├── Makefile
├── README.md
├── docker-compose.yml
├── flask
│   ├── Dockerfile
│   ├── app
│   │   ├── __init__.py
│   │   ├── hot-reload
│   │   └── views.py
│   ├── app.ini
│   ├── requirements.txt
│   └── run.py
└── nginx
    ├── Dockerfile
    └── nginx.conf
```

## Features

-

## Dependencies

- Watchman

## How to run

- Make sure Docker is up & running
- On the root folder of the project, run `make`
- Visit your `localhost` on a web browser
- Send a POST request from your command line:

```
curl --location --request POST 'localhost' \
--header 'Content-Type: application/json' \
--data-raw '{
    "index": "3"
}'
```
