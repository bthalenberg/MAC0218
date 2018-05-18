# Projeto de MAC0218 -- TecProg II: USP Analytics

Este é um projeto da disciplina MAC0218, desenvolvido por
* Artur Magalhães - [@tutss](http://github.com/tutss)
* Bruna Thalenberg - [@bthalenberg](http://github.com/bthalenberg)
* Guilherme Yambanis - [@yambanis](http://github.com/yambanis)
* Gustavo Silva - [@akaFTS](http://github.com/akaFTS)
* Lucas Santos - [@lms11](http://github.com/lms11)
* Victor Colombo - [@victorcolombo](http://github.com/victorcolombo)

## Descrição

Pretendemos criar um _website_ que funcione como plataforma de acesso aos dados de transparência da USP, indexada, pesquisável e inteiramente disponível pelo navegador. Pretendemos, além disso, disponibilizar análises gráficas básicas como gráficos pizza do orçamento por instituto e por categoria, gráficos de correlação entre orçamento e número de alunos, entre outros. Em um primeiro momento, o foco será em dados financeiros já disponibilizados pela Universidade.

Tomaremos como referências os sites [Para onde foi o meu dinheiro?](http://paraondefoiomeudinheiro.org.br/datasets/overview), o [Portal da Transparência do Governo Federal](http://www.portaltransparencia.gov.br/), o [do Município de São Paulo](http://transparencia.prefeitura.sp.gov.br/), e o [Dados USP](https://uspdigital.usp.br/anuario).

## Como instalar e executar o projeto em ambiente de desenvolvimento

**A instalação e execução do projeto assume que o Ruby (versão 2.4) e PostgreSQL (versão 9.6) já estão instalados na máquina.**

Com os arquivos do projetos armazenados no seu computador, é necessário inicialmente instalar as dependências. Para isso, execute:

> bundle install

Na sequência, execute:

```
bundle exec rake db:create
bundle exec rake db:migrate
```

Por fim, para iniciar o servidor local, execute:

> rails server

É possível que você precise criar um usuário para o PostgreSQL caso ainda não tenha sido configurado anteriormente. Neste caso, você irá se deparar com o seguinte erro: "FATAL: role _user_ does not exist" ao abrir o servidor. Execute 
  
 > sudo -u postgres createuser --superuser _user_
  
e atualize o servidor.


## Como executar os testes

Para executar todos os testes, execute:

```
rake test
```

Para executar apenas conjunto de testes, execute um dos seguintes:

```
rake test:models
rake test:controllers
rake test:integration
```

## Cronograma de entregas

Iremos paralelizar a execução do projeto, para que cada aluno trabalhe com a seção que mais lhe interessa. Para isso, o projeto será dividido em branches, e as entregas são referentes ao que deve estar presente na branch master. Uma dupla de alunos será responsável por liderar a equipe durante a execução de cada entrega.

### Entrega 1: Banco de dados

A primeira entrega visa modelar o banco de dados. Os dados a serem modelados serão retirados do [orçamento da USP](http://www.usp.br/vrea/?q=node/35). Os modelos podem ser encontrados [aqui](database.md).

### Entrega 2: Ruby on Rails

A segunda entrega visa o desenvolvimento de uma interface front-end para visualização da informação. Tecnicamente, iremos integrar algumas ferramentas de geração de gráficos e elementos de interface com o banco de dados.


### Entrega 3: Análises de Dados

A terceira entrega visa realizar análises mais complexas dos dados, buscando correlacionar os dados apresentados na fase dois, levantar informações relevantes e inconsistências nos dados.
