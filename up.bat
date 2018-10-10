ECHO OFF
docker rmi $(docker images -qf dangling=true)
docker volume rm $(docker volume ls -qf dangling=true)
docker-compose up -d nginx mysql phpmyadmin
