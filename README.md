# READ ME 🤓

### Your mission
Our moderation service, if down for a moment, won't process all the events it has missed while being off.
Take a look at how the event-bus works and make the moderation :
- retreive all the available events
- properly handle them

**How to know if I've successfully reached the goal of the exercice :**
- Turn down the Moderation service
- Add one or multiple comments to a post
- Turn the Moderation service back on
- The new comments should be processed immediately (their status should change)


### Get ready
1. Clone this repository :
```sh
git clone https://github.com/soufcod3/microservices-challenge.git
```

2. Go inside the directory microservices-challenge.git :
```sh
cd ./microservices-challenge
```

3. Run docker-compose.yml file

```sh
docker compose up -d
```

4. Initialize databases for each service that needs one

Some services need a database : ```posts```, ```comments``` and ```queries```
Go inside each of them by running :
```sh
docker exec -it <SERVICE_CONTAINER_ID> /bin/bash
```
(use ```docker ps``` command to find the container id)

Now in each service terminal, execute this to initialise the database :

```sh
make start_db
```

You'll need to enter twice the password ```rootpassword``` for each service.

For ```posts```, ```comments``` and ```queries``` services, do this.

5. Start our services !

Now that all the services needing a database got one, we can launch our app!
You need to go inside these service containers : ```event-bus```, ```posts```, ```comments```, ```moderation```, ```queries``` and of course our client ```app```

and execute this :
```sh
npm install && npm start
```
**Beware** : there is no particular order to launch our services except for our ```event-bus``` service. 
Some services depend on him to properly launch, so make sure it's already launched before you start all the others.

## May the force be with you 🚀

