#!/bin/sh

sudo rm -rf public

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
docker compose run --rm app npm run build
echo "Imagens - feito!"


echo "Inicializar app com Tailwind - construindo..."
docker compose up -d app
docker exec -it app sh
npx tailwindcss init -p
echo "Inicializar app com Tailwind - feito!"

# Como executar:
# bash 01_build_local_project.sh