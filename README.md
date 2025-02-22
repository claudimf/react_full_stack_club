# Curso de React para Completos Iniciantes [2024]

## Instrutor: Felipe Rocha

### Referências
- [Perfil no GitHub](https://github.com/felipemotarocha)
- [Perfil no LinkedIn](https://www.linkedin.com/in/felipe-rocha-034871172)

Neste curso o que temos a aprender:  

1. ReactJS  
2. JAVASCRIPT  
2. Configuração do Docker  

# Guia do desenvolvedor

## 🐳 Desenvolvendo utilizando Docker

### Permissões dos arquivos:
Se você criar um arquivo dentro de um container para que se tenha acesso localmente, você precisa alterar as permissões:

```sh
sudo chown -R $USER:$USER .
```
### Construindo o projeto localmente:
No pasta raíz há um arquivo chamado '01_build_local_project.sh' para construir o projeto localment, para tal execute:

```sh
bash 01_build_local_project.sh
```

### Acessar o bash:
```sh
docker compose run --rm app bash
```

### Caso não tenha o package.json:
No momento em que construir o projeto através do "docker compose build app" e você não tiver o arquivo package.json você pode simplesmente comentar a linha "COPY package.json ." do arquivo do Dockerfile e rodar o build novamente:

```sh
docker compose build app
docker compose run --rm app bash
npm init --yes
```

## Referências utilizadas
[1° Curso de React para Completos Iniciantes [2024]](https://www.youtube.com/watch?v=2RWsLmu8yVc)  
[2° Install Tailwind CSS with Vite](https://tailwindcss.com/docs/guides/vite)  
[3° Tailwind CSS](https://tailwindcss.com/docs/flex-basis)  
[4° Lucide React](https://lucide.dev/guide/packages/lucide-react)  
[5° react-router-dom](https://www.npmjs.com/package/react-router-dom)  
[6° jsonplaceholder](https://jsonplaceholder.typicode.com/)  