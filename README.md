# Currency Exchange App

This project consists of a Frontend application developed with Next.js and a Backend API developed with FastAPI.
The applications are containerized using Docker, and Docker Compose is used to manage multi-container Docker applications.

## Prerequisites

- Docker
- Docker Compose
- Python 3.11
- Node 20

## Project Structure

```
Project Root
│
├── technical-backend # Backend API directory
│ ├── Dockerfile # Dockerfile for building the backend image
│ └── ... # backend files and directories
│
├── technical-frontend # Frontend application directory
│ ├── Dockerfile # Dockerfile for building the frontend image
│ └── ... # frontend files and directories
│
└── docker-compose.yml # Docker Compose configuration file
```

## Setup and Running the Application

### Step 1: Clone the Repository

Clone the repository to your local machine:

```sh
git clone <repository-url> <project-name>
cd <project-name>
```

Replace `<repository-url>` with the URL of the Git repository and `<project-name>` with the name you want to give to the project directory.

### Step 2: Build and Run the Docker Containers

Navigate to the project root directory and use Docker Compose to build and start the containers:

```sh
docker-compose up --build
```

This command will build the Docker images for both the frontend and the backend and start the containers.

### Step 3: Access the Application

Once the containers are up and running, you can access the applications in your web browser:

- Frontend: [http://localhost:3000](http://localhost:3000)
- Backend API: [http://localhost:8000](http://localhost:8000)

## Additional Commands

### Stopping the Containers

To stop the running containers, use the following command:

```sh
docker-compose down
```

### Viewing Logs

To view the logs of the running containers, use the following command:

```sh
docker-compose logs
```

### Makefile

A Makefile is also provided for convenience. You can use the make commands for building, starting, stopping the containers, and more. View the Makefile for available commands.

```sh
make <command>
```

Replace `<command>` with the desired make command from the Makefile.

## Troubleshooting

If you encounter any issues while setting up or running the application, refer to the error logs in the terminal and the troubleshooting section of the official Docker and Docker Compose documentation.
