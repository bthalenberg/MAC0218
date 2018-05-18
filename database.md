# Gerando os modelos dos dados

Os modelos foram baseados nas tabelas encontradas no [orçamento da USP](http://www.usp.br/vrea/?q=node/35).

## Orçamento de receita

*Origem: Tabela A*

```
rails g scaffold Receita \
  receita_tesouro_estado:bigint \
  receita_propria_nao_vinculada:bigint \
  rendimento_aplicacoes:bigint \
  reembolsos:bigint  \
  outras_receitas:bigint \
  receitas_vinculadas:bigint \
  ano:smallint
```

## Orçamento de despesa

*Origem: Tabela B e Tabela C*

```
rails g scaffold Despesa \
  ativo:bigint \
  aposentados:bigint \
  folhas_avulsas:bigint \
  auxilio_alimentacao:bigint \
  vale_refeicao:bigint \
  pasep:bigint \
  adiatamento_ferias:bigint \
  decimo_terceiro:bigint \
  terco_ferias:bigint \
  precatorios:bigint \
  indenizacoes_pidv:bigint \
  outros_custeios_investimentos:bigint \
  reservas_orcamentarias:bigint \
  despesas_custeadas_receitas_vinculadas:bigint \
  ano:smallint
```

## Distribuição das despesas não vinculadas por grupo

*Origem: Tabela D*

Exemplo de entrada:
* Alínea: Unidades de ensino
* Grupo: Outros custeios e investimentos - Dotação básica
* Proposta orçamentária: 56455
* Participação: 1,05%
* Ano: 2018

```
rails g scaffold DespesaDetalhe \
  alinea:string \
  grupo:string \
  proposta_orcamentaria:bigint \
  participacao:decimal \
  ano:smallint
```

##  Distribuição da dotação orçamentária

### não vinculada por área de atuação e alíneas

*Origem: Quadro 1 (Q1)*

```
rails g scaffold OrcamentoNVAreaAtuacao \
  area_item:string \
  pessoal_ativo:bigint \
  pessoal_inativo:bigint \
  precatorio:bigint \
  outros_custeios_investimentos:bigint \
  reservas_orcamentarias:bigint \
  proporcao:decimal \
  ano:smallint
```

### não vinculada para as unidades de ensino e pesquisa

*Origem: Quadro 2 (Q2)*

```
rails g scaffold OrcamentoNVUnidadeEnsinoPesquisa \
  unidade_ensino_pesquisa:string \
  pessoal_ativo:bigint \
  pessoal_inativo:bigint \
  dotacao:bigint \
  outros_custeios_investimentos_dotacao_basica_adicionais:bigint \
  outros_custeios_investimentos_utilidade_publica:bigint \
  ano:smallint
```

### não vinculada para os institutos especializados, museus e hospitais e anexos

*Origem: Quadro 3 (Q3)*

Observação: categoria pode ser "Institutos especializados", "Museus" ou "Hospitais e anexos".

```
rails g scaffold OrcamentoNVInstitutosEspecializados \
  unidade:string \
  categoria:string \
  pessoal_ativo:bigint \
  pessoal_inativo:bigint \
  dotacao:bigint \
  outros_custeios_investimentos_dotacao_basica_adicionais:bigint \
  outros_custeios_investimentos_utilidade_publica:bigint \
  ano:smallint
```

### para os órgãos de apoio

*Origem: Quadro 4 (Q4)*

```
rails g scaffold OrcamentoOrgaoApoio \
  orgao_apoio:string \
  pessoal_ativo:bigint \
  pessoal_inativo:bigint \
  dotacao:bigint \
  outros_custeios_investimentos_dotacao_basica_adicionais:bigint \
  outros_custeios_investimentos_utilidade_publica:bigint \
  ano:smallint
```

### não vinculada para os órgãos de serviço

*Origem: Quadro 5 (Q5)*

```
rails g scaffold OrcamentoOrgaoServico \
  orgao_servico:string \
  pessoal_ativo:bigint \
  pessoal_inativo:bigint \
  dotacao:bigint \
  outros_custeios_investimentos_dotacao_basica_adicionais:bigint \
  outros_custeios_investimentos_utilidade_publica:bigint \
  ano:smallint
```

## Glossário

* **Receitas não vinculadas:** XXX. Podem ser tanto advindas do Tesouro do Estado (porcentagem do ICMS repassada à USP), quanto próprias.
* **Receitas vinculadas:**
* **Pessoal e reflexos:** essa categoria engloba os custos da folha de pagamento (de servidores ativos e inativos), outras folhas (que por sua vez engloba os precatórios) e provisões.
* **Precatórios:**
* **Outros custeios:** categoria guarda-chuva que engloba todos os gastos que não são com pessoal ou reservas orçamentárias. Exemplos de custos nessa categoria são a dotação básica de unidades de ensino e pesquisa e de órgãos de apoio, o programa de bolsas e auxílios da política de apoio à permanência e formação estudantil, projetos de cultura e extensão, entre outros.
* **Reservas orçamentárias:** inclui a reserva de contingência e a reserva patrimonial de contingência.
* **Indenização PIDV:** O PIDV foi o Programa de Incentivo à Demissão Voluntária, que vem sendo posto em prática desde 2015 como medida para aliviar a crise financeira. Esses custos são referentes aos encargos trabalhistas que devem ser pagos no momento da demissão de um funcionário.
* **Institutos especializados:**
* **Projetos especiais:** custos de projetos de gradução, pós-graduação, pesquisa, cultura e extensão e reitoria, gerenciados pelas pró-reitorias. Não é claro que projetos são esses.
* **Reservas específicas:** destinadas à cobertura de sinistros.
* **Atividades integradas:** custos de avaliação institucional, assistência médica e odontológica, material bibliográfico, cooperação acadêmica nacional e internacional, obras, biotérios, programa integrado de segurança, informática, restaurantes universitários, creches, serviços de utilidade pública, sistema de frota de veículos, renovação da frota de veículos especiais, taxas municipais, escola técnica e gestão da USP, reservas ecológicas e taxas para proteção à propriedade intelectual.
* **Órgãos de apoio:** englobam a SCS e a Reitoria e seus subórgãos: GR/GVR, CERT, PG, SG, CODAGE, DA, DF, DRH, SAUSP, Saúde Ocupacional, Escola Técnica e de Gestão, Agência USP de Cooperação Acadêmica Nacional e Internacional, Agência USP Inovação, CDI, Espaço Brasiliana, InovaUSP, Departamento de Assistência à Saúde e Superintendência de Segurança.
* **Órgãos de serviço:** são CEPEUSP, EDUSP, SAS, SEF, SIBI, STI e as prefeituras dos campi: PUSP-B, PUSP-C, PUSP-CL, PUSP-FC, PUSP-L, PUSP-LQ, PUSP-QSD, PUSP-RP, PUSP-SC. 
* **Dotação básica:** custos de unidades de ensino, institutos especializados, museus, hospitais e anexos, órgãos de apoio, órgãos de serviço e prefeituras.
* **Adicionais:** custos com treinamento de recursos humanos; manutenção predial, de áreas externas e de sistema viário; equipamentos de segurança; manutenção e reposição de equipamentos de informática; serviços de limpeza e vigilância; despesas com transporte e aluguel de imóveis.
* **Utilidade pública:**
* **Dotação:**

## Siglas
### Unidades de Ensino e Pesquisa:

* **EACH**: Escola de Artes, Ciências e Humanidades.
* **ECA**: Escola de Comunicação e Artes.
* **ECA-OCAM**: Orquestra de Câmara da ECA.
* **EE**: Escola de Enfermagem.
* **EEFE**: Escola de Educação Física e Esporte.
* **EEFERP**: Escola de Educação Física e Esporte de Ribeirão Preto.
* **EEL**: Escola de Engenharia de Lorena.
* **EERP**: Escola de Enfermagem de Ribeirão Preto.
* **EESC**: Escola de Engenharia de São Carlos.
* **EESC-CRHEA**: Centro de Recursos Hídricos e Ecologia Aplicada da EESC.
* **EP**: Escola Politécnica.
* **ESALQ**: Escola Superior de Agricultura Luiz de Queiroz.
* **FAU**: Faculdade de Arquitetura e Urbanismo.
* **FCF**: Faculdade de Ciências Farmacêuticas.
* **FCFRP**: Faculdade de Ciências Farmacêuticas de Ribeirão Preto.
* **FD**: Faculdade de Direito.
* **FDRP**: Faculdade de Direito de Ribeirão Preto.
* **FE**: Faculdade de Educação.
* **FE-EA**: Escola de Aplicação da FE.
* **FEA**: Faculdade de Economia, Administração e Contabilidade.
* **FEARP**: Faculdade de Economia, Administração e Contabilidade de Ribeirão Preto.
* **FFCLRP**: Faculdade de Filosofia, Ciências e Letras de Ribeirão Preto.
* **FFLCH**: Faculdade de Filosofia, Letras e Ciências Humanas.
* **FM**: Faculdade de Medicina.
* **FMRP**: Faculdade de Medicina de Ribeirão Preto.
* **FMVZ**: Faculdade de Medicina Veterinária e Zoootecnia.
* **FMVZ-HOVET**: Hospital Veterinário da FMVZ.
* **FO**: Faculdade de Odontologia.
* **FOB**: Faculdade de Odontologia de Bauru.
* **FORP**: Faculdade de Odontologia de Ribeirão Preto.
* **FSP**: Faculdade de Saúde Pública.
* **FZEA**: Faculdade de Zootecnia e Engenharia de Alimentos.
* **FZEA-HOVET**: Hospital Veterinário da FZEA.
* **IAG**: Instituto de Astronomia, Geofísica e Ciências Atmosféricas.
* **IAU**: Instituto de Arquitetura e Urbanismo.
* **IB**: Instituto de Biologia.
* **ICB**: Instituto de Ciências Biomédicas.
* **ICMC**: Instituto de Ciências Matemáticas e de Computação.
* **IF**: Instituto de Física.
* **IFSC**: Instituto de Física de São Carlos.
* **IGC**: Instituto de Geociências.
* **IME**: Instituto de Matemática e Estatística.
* **IO**: Instituto Oceanográfico.
* **IP**: Instituto de Psicologia.
* **IQ**: Instituto de Química.
* **IQSC**: Instituto de Química de São Carlos.
* **CDCC**: Centro de Divulgação Científica e Cultural.
* **IRI**: Instituto de Relações Internacionais.

### Institutos especializados

* **CEBIMAR**: Centro de Biologia Marinha.
* **CENA**: Centro de Energia Nuclear na Agricultura.
* **IEA**: Instituto de Estudos Avançados.
* **IEB**: Instituto de Estudos Brasileiros.
* **IEE**: Instituto de Energia e Ambiente.
* **IMT**: Instituto de Medicina Tropical.

### Museus

* **MAC**: Museu de Arte Contemporânea.
* **MAE**: Museu de Arqueologia e Etnologia.
* **MP**: Museu Paulista.
* **MRCI**: Museu Republicano "Convenção de Itu".
* **MZ**: Museu de Zoologia.

### Hospitais e anexos

* **HRAC**: Hospital de Reabilitação de Anomalias Craniofaciais.
* **HU**: Hospital Universitário.
* **SVOC**: Serviço de Verificação de Óbitos da Capital.
* **SVOI**: Serviço de Verificação de Óbitos do Interior.

### Órgãos de apoio:

* **SCS**: Superintendência de Comunicação Social.
* **CDI**: Centro de Difusão Internacional.
* **GR/GVR**: Gabinete da Reitoria/Gabinete da Vice-Reitoria.
* **CERT**: Comissão Especial de Regimes de Trabalho.
* **PG**: Procuradoria Geral.
* **SG**: Secretaria Geral.
* **CODAGE**: Coordenadoria de Administração Geral.
* **DA**: Departamento de Administração da Reitoria.
* **DF**: Departamento de Finanças.
* **DRH**: Departamento de Recursos Humanos.
* **SAUSP**: Sistema de Arquivos da USP.

### Órgãos de serviço:

* **CEPEUSP**: Centro de Práticas Esportivas da USP
* **EDUSP**: Editora USP
* **SAS**: Superintendência de Assistência Social
* **SEF**: Superintendência do Espaço Físico
* **SIBI**: Sistema Integrado de Bibliotecas
* **STI**: Superintedência de Tecnologia da Informação
* **PUSP-B, PUSP-C, PUSP-CL, PUSP-FC, PUSP-L, PUSP-LQ, PUSP-QSD, PUSP-RP, PUSP-SC**: prefeitura dos campi; respectivamente Bauru, Capital, Capital-Leste, Fernando Costa (Pirassununga), Lorena, Luiz de Queiroz (Piracicaba), Quadrilátero da Saúde-Direito, Ribeirão Preto, São Carlos. 

