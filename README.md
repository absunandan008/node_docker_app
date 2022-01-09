## The node.js example app
This app runs on port 3001 and just displays 'Hello World ||| Hostname : Displays_Host_Name'

This is a docker supported up. You will need docker running on your machine.

## Requirements
* Node 16 
* Git
* Docker


## Common setup Local without Docker

Clone the repo and install the dependencies.

```bash
git clone https://github.com/absunandan008/node_docker_app.git
cd node_docker_app
```

```bash
npm install
```

## Steps for read-only access

To start the express server, run the following

```bash
npm start
```

Open [http://localhost:3001](http://localhost:3001) and take a look around.


## Setup with Docker
Clone the repo
```bash
git clone https://github.com/absunandan008/node_docker_app.git
cd node_docker_app
```
```bash
docker-compose build
docker compose up
```
Open [http://localhost:3001](http://localhost:3001)
## Output: 
Hello World ||| Hostname : bce9dbd2ee2a

## OTHER URLs:
Gives just hostname
[http://localhost:3001/hostname](http://localhost:3001/hostname)

Gives Network details
[http://localhost:3001/network](http://localhost:3001/network)





