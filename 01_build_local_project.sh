#!/bin/sh

echo "Containeres existentes - excluindo..."
docker compose down
echo "Containeres existentes - feito!"

echo

echo "Volumes - excluindo..."
docker volume rm $(docker volume ls -f dangling=true)
echo "Volumes - feito!"

echo

echo "Imagens - construindo..."
docker rmi react_full_stack_club-app
docker compose build app
rm -rf public
docker compose run --rm app npm run build
echo "Imagens - feito!"


# Como executar:
# bash 01_build_local_project.sh