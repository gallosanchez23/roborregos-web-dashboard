# RoBorregos Web Dashboard

Web application intended to be the team's data warehouse and dashbord for
managmenet of information related to team RoBorregos (international robotics
team). Homemade project, developed by RoBorregos' members. Unfortunately, you
can't consult more than the login page of this dashboard, since you would
require a valid usernamen and password to see the rest of it, but you can check
out our public site at [roborregos.com](https://roborregos.com) or
[roborregos.mx](https://roborregos.mx).

## Table of contents

- [RoBorregos Web Dashboard](#roborregos-web-dashboard)
	- [Table of contents](#table-of-contents)
	- [Project details](#project-details)
		- [Development team](#development-team)
		- [Management tools](#management-tools)
	- [Development](#development)
		- [Setup](#setup)
		- [Running the stack for development](#running-the-stack-for-development)
		- [Stopping services](#stopping-services)

## Project Details

### Development team

| Name | Email | Github | Role |
| ---- | ----- | ------ | ---- |
| Jose Eduardo Sanchez | [gallo.sanchez23@gmail.com](mailto:gallo.sanchez23@gmail.com) | [@gallosanchez23](https://github.com/gallosanchez23) | PM & Developer |

### Management tools

You should ask for access to these tools if you don't have it already:

* [Github repo](https://github.com/gallosanchez23/roborregos-web-dashboard)
* [Heroku](https://www.heroku.com/)

## Development

### Setup

#### Third-party

Before setting up the project, you should have installed the following development tools:

* [Git](https://git-scm.com/downloads)
* [Docker](https://runnable.com/docker/getting-started/)
* [Docker Compose](https://docs.docker.com/compose/install/)

#### Initial build

Once you have installed the required third-party software, you can follow this steps:

1. Clone the project repository on your local machine.

	SSH:

	```bash
	$ git clone git@github.com:gallosanchez23/roborregos-web-dashboard.git
	```

	or HTTPS:
	```bash
	$ git clone https://github.com/gallosanchez23/roborregos-web-dashboard.git
	```

2. Enter the project's directory

	```bash
	$ cd roborregos-web-dashboard
	```

3. Create the Docker image (This could take a couple minutes).

	```bash
	$ docker-compose build
	```

### Running the stack for development

In your terminal, run:


```bash
$ docker-compose up
```

This command will start the Rails application and display the logs on your terminal. Use `Ctrl + C` to exit the logs and turn the application down. Otherwise, in order to run the service in the background, just run:


```bash
$ docker-compose up -d
```

If it is the first time you are running the project, you will need to create the project's database. For this, fire up a new terminal and navigate to the project's directory. Once you are there, run:

```bash
$ docker-compose run web rails db:create
```

This command will use Rails within the existing and running container to create the development and test databases. This should output somehting like:

```bash
Starting roborregos-web-dashboard_db_1 ... done
Created database 'roborregos_dashboard_development'
Created database 'roborregos_dashboard_test'
```

Finally, you will need to run the pending db migrations. For this, run:

```bash
$ docker-compose run web rails db:migrate
```

You are now ready to open the application and start collaborating with the project. Go to your browser and enter [localhost:3000](http://localhost:3000/) to see the running application. Enjoy!

### Stopping services

In order to stop `roborregos-web-dashboard` entirely you can run:


```bash
$ docker-compose stop
```

If you want to stop the services and remove the containers:


```bash
$ docker-compose down
```

If you only want to stop one service in particular, you can specify it with the following command:


```bash
$ docker-compose stop [service-name]
```

### Good to know commands

If the service is already running, you can run:

```bash
$ docker attach roborregos-web-dashboard_web_1
```

to attach all logs from the web service, or

```bash
$ docker attach roborregos-web-dashboard_db_1
```

for the db service.
Also, if the container is already running, you can always run:

```bash
$ docker-compose run web bash
```

to enter the container's console, from where you can interact directly with Rails and every program installed in the containers environment.
