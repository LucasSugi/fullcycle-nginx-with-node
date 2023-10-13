# Nginx com Node
Desafio do curso [fullcycle](https://fullcycle.com.br/) para subir uma aplicação com as seguintes ferramentas:
- nginx
- node.js
- mysql

O `nginx` deve atuar como proxy reverso para o `node.js` que por sua vez deve-se comunicar com o `mysql`. Essa aplicação deve ser "Dockerizada" através de um `docker-compose.yaml`.

# Observações
No arquivo `Makefile` existe alguns comandos para facilitar a testagem e desenvolvimento. O comando `make build` irá construir as imagens das 3 ferramentas. Posteriormete deve-se executar:
- `make run-mysql`
- `make run-node-prod`
- `make run-nginx-prod`

**Atenção**
- Cuidado ao executar o segundo comando `make run-node-prod`, pois pode ser que falhe por o `mysql` ainda não estar de pé.
- Para o build da imagem do `mysql` foi necessário adicionar `--platform=x86_64` devido as configurações da minha máquina. Talvez a sua não precise se estiver usando linux.

# Uso da aplicação
Acessando no browser a url `localhost:8080` irá te retornar uma mensagem `Full Cycle Rocks` e os usuários cadastrados previamente no banco (User 1, User 2 e User 3).

Para fins de testes, caso queira cadastrar novos usuários acesse a url `localhost:8080/api/v1/users/:name` onde :name é o nome do usuário que deseja cadastrar. Então, por exemplo, `localhost:8080/api/v1/users/foo` irá cadastrar o usuário como nome `foo` no banco de dados (que posteriormente pode ser acessado por `localhost:8080`).

# Execução
- `docker-compose-up -d`
- `docker-compose-up -d --build` ("Re-builda" as imagens)

# Referências
- https://dev.to/logrocket/how-to-run-a-node-js-server-with-nginx-588
- https://github.com/devfullcycle/fc-devops-docker/tree/main
- https://blog.logrocket.com/how-to-run-a-node-js-server-with-nginx/