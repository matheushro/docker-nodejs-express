# Docker Node.js Express

Este projeto é um exemplo de aplicação Node.js com Express, pronta para ser executada em containers Docker.

## Pré-requisitos

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/)

## Como rodar o projeto

### 1. Build e execução com hot reload

Para construir e rodar o projeto com monitoramento de alterações (hot reload):

```bash
docker-compose up --build --watch
```

> O parâmetro `--watch` faz com que o Docker Compose monitore alterações nos arquivos e reinicie os containers automaticamente.

### 2. Parar os containers

Para parar a aplicação:

```bash
docker-compose down
```

### 3. Outros comandos úteis

- **Ver logs dos containers:**
    ```bash
    docker-compose logs -f
    ```
- **Acessar o container:**
    ```bash
    docker-compose exec app bash
    ```

## Estrutura do projeto

```
.
├── Dockerfile
├── docker-compose.yml
├── src/
│   └── index.js
├── package.json
└── README.md
```

## Acesso à aplicação

Após iniciar, acesse: [http://localhost:2000](http://localhost:2000)
