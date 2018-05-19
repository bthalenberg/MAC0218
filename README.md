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

**A instalação e execução do projeto assume que o Ruby (versão 2.4 ou superior) já está instalado e o PostgreSQL já está configurado na máquina.**

Com os arquivos do projetos armazenados no seu computador, é necessário inicialmente instalar as dependências. Para isso, execute:

```
cd USPAnalytics
bundle install
```

Na sequência, execute:

```
bundle exec rake db:create
bundle exec rake db:migrate
```

Por fim, para iniciar o servidor local, execute:

```
rails server
```

No seu navegador, visite ```localhost:3000``` para acessar a aplicação.


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
