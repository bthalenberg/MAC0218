# Gerando os modelos dos dados

Os modelos foram baseados na tabela XXX.

## Orçamento de receita

*Origem: Tabela A*

> rails g scaffold Receita \
>   receita_tesouro_estado:bigint \
>   receita_propria_nao_vinculada:bigint \
>   rendimento_aplicacoes:bigint \
>   reembolsos:bigint  \
>   outras_receitas:bigint \
>   receitas_vinculadas:bigint \
>   ano:smallint

## Orçamento de despesa

*Origem: Tabela B e Tabela C*

> rails g scaffold Despesa \
>   ativo:bigint \
>   aposentados:bigint \
>   folhas_avulsas:bigint \
>   auxilio_alimentacao:bigint \
>   vale_refeicao:bigint \
>   pasep:bigint \
>   adiatamento_ferias:bigint \
>   decimo_terceiro:bigint \
>   terco_ferias:bigint \
>   precatorios:bigint \
>   indenizacoes_pidv:bigint \
>   outros_custeios_investimentos:bigint \
>   reservas_orcamentarias:bigint \
>   despesas_custeadas_receitas_vinculadas:bigint \
>   ano:smallint

## Distribuição das despesas não vinculadas por grupo

*Origem: Tabela D*

Exemplo de entrada:
* Alínea: Unidades de ensino
* Grupo: Outros custeios e investimentos - Dotação básica
* Proposta orçamentária: 56455
* Participação: 1,05%
* Ano: 2018

> rails g scaffold DespesaDetalhe \
>   alinea:string \
>   grupo:string \
>   proposta_orcamentaria:bigint \
>   participacao:decimal \
>   ano:smallint

##  Distribuição da dotação orçamentária

### não vinculada por área de atuação e alíneas

*Origem: Quadro 1 (Q1)*

> rails g scaffold OrcamentoNVAreaAtuacao \
>   area_item:string \
>   pessoal_ativo:bigint \
>   pessoal_inativo:bigint \
>   precatorio:bigint \
>   outros_custeios_investimentos:bigint \
>   reservas_orcamentarias:bigint \
>   proporcao:decimal \
>   ano:smallint


### não vinculada para as unidades de ensino e pesquisa

*Origem: Quadro 2 (Q2)*

> rails g scaffold OrcamentoNVUnidadeEnsinoPesquisa \
>   unidade_ensino_pesquisa:string \
>   pessoal_ativo:bigint \
>   pessoal_inativo:bigint \
>   dotacao:bigint \
>   outros_custeios_investimentos_dotacao_basica_adicionais:bigint \
>   outros_custeios_investimentos_utilidade_publica:bigint \
>   ano:smallint


### não vinculada para os institutos especializados, museus e hospitais e anexos

*Origem: Quadro 3 (Q3)*

Observação: categoria pode ser "Institutos especializados", "Museus" ou "Hospitais e anexos".

> rails g scaffold OrcamentoNVInstitutosEspecializados \
>   unidade:string \
>   categoria:string \
>   pessoal_ativo:bigint \
>   pessoal_inativo:bigint \
>   dotacao:bigint \
>   outros_custeios_investimentos_dotacao_basica_adicionais:bigint \
>   outros_custeios_investimentos_utilidade_publica:bigint \
>   ano:smallint


### para os órgãos de apoio

*Origem: Quadro 4 (Q4)*

> rails g scaffold OrcamentoOrgaoApoio \
>   orgao_apoio:string \
>   pessoal_ativo:bigint \
>   pessoal_inativo:bigint \
>   dotacao:bigint \
>   outros_custeios_investimentos_dotacao_basica_adicionais:bigint \
>   outros_custeios_investimentos_utilidade_publica:bigint \
>   ano:smallint


### não vinculada para os órgãos de serviço

*Origem: Quadro 5 (Q5)*

> rails g scaffold OrcamentoOrgaoServico \
>   orgao_servico:string \
>   pessoal_ativo:bigint \
>   pessoal_inativo:bigint \
>   dotacao:bigint \
>   outros_custeios_investimentos_dotacao_basica_adicionais:bigint \
>   outros_custeios_investimentos_utilidade_publica:bigint \
>   ano:smallint
