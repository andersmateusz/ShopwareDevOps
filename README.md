# First time
run setup.sh; 
inside container run /var/www/html/update.sh;
activate plugins;

# Every other time
in static-plugins folder run git submodules update ;
inside container run /var/www/html/update.sh;

# Add new plugin release to repo
## At https://github.com/andersmateusz/ShopwareSampleProject
add submodule to repo;
change composer.json and package.json;
## Locally
in static-plugins folder run git submodules update;
inside container run update.sh;
activate new plugin;

# Binding
There will be setup with binding options. For frontends only /var/www/html/custom will be bound.;

# Production
There will be separate commands, docker-compose.yml, composer.json and package.json with caching more strict requirements and dockware production image 
