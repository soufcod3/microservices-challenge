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

Check that you already got Docker Desktop running on your machine. Then:
```sh
docker compose up --build
```

4. Initialise databases for each service that needs one 

The services in question are ```posts```, ```comments``` and ```queries```.
Thanks to our docker-compose.yml file and Makefiles, it should be pretty simple.

Let's use our terminal again. If you take a look at ./Makefile, you'll see that you can simple open a shell for these services.

So do it for ```posts```, ```comments``` and ```queries``` services in seperate terminals.
For each service, you should run this command to setup its database :
```sh
make start_db
```

- Username : root
- Password : rootpassword

5. Start our services !

Now that all the services needing a database got one, we can launch our app!
To do so, use the ./Makefile and open a shell for all the others services too.
Shouldn't need to mention it but just in case :
```sh
npm install && npm start
```
**Beware** : there is no particular order to launch our services except for our ```event-bus``` service. 
Some services depend on him to properly launch, so make sure it's already launched before you start all the others.

## May the force be with you 🚀

