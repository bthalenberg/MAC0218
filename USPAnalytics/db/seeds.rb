# rails g scaffold DespesaDetalhe \
#   alinea:string \
#   grupo:string \
#   proposta_orcamentaria:bigint \
#   participacao:decimal \
#   ano:smallint

#Exemplo de entrada:
#
#    Alínea: Unidades de ensino
#    Grupo: Outros custeios e investimentos - Dotação básica
#  	 parent: nil
#    Proposta orçamentária: 56455
#    Participação: 1,05%
#    Ano: 2018

#rails g scaffold Despesa \
#rails g scaffold DespesaDetalhe \
#  alinea:string \
#  grupo:string \
#  parent: DespesaDetalhe \
#  proposta_orcamentaria:bigint \
#  participacao:decimal \
#  ano:smallint

# Tabela A
# DespesaDetalhe: alinea | grupo | parent | proposta_orcamentaria | participacao | ano
grupo1a = "Receitas Não Vinculadas"
grupo2a = "Receitas Vinculadas"
tabelaA=[
	["Receitas do Tesouro do Estado", 		 grupo1a, nil, 	      4999283.91,	 96.55 ],
	["Receita Própria não Vinculada", 		 grupo1a, nil, 		  69480.9,  	 1.34],
	["Rendimento de Aplicações Financeiras", grupo1a, tabelaA[1], 27325.48, 	 0.53],
	["Reembolsos", 							 grupo1a, tabelaA[1],  19235.42, 	 0.37],
	["Outras Receitas", 					 grupo1a, tabelaA[1],  22920, 		 0.44], 
	["Receitas Vinculadas", 				 grupo2a, nil, 		  109160, 		 2.11]
]
# Tabela B
grupo1b = "Despesas Com Recursos Do Tesouro e Recursos Próprios Não Vinculados"
grupo2b = "Despesas Custeadas Com Receitas Vinculadas"
tabelaB=[
	["Pessoal e Reflexos", 				grupo1b, nil,	4639182, 84.88 ],
	["Precatórios", 					grupo1b, nil, 	15239,   0.28],
	["Outros Custeios e Investimentos", grupo1b, nil, 	698495,  12.78],
	["Reservas Orçamentárias", 			grupo1b, nil, 	3440,    0.06],
	["Outros Custeios e Investimentos", grupo2b, nil, 	109160,  2]
]
# Tabela C
grupo1c = "Despesas Com Recursos Do Tesouro e Recursos Próprios Não Vinculados"
grupo2c = "Despesas Custeadas Com Receitas Vinculadas"
tabelaC=[
	["Pessoal", 						  grupo1c, nil, 		4639182, 	nil],
	["Precatórios", 					  grupo1c, nil, 		15239, 		nil],
	["Precatórios" , 					  grupo1c, tabelaC[1],  15239, 		nil],
	["Indenizações PIDV", 				  grupo1c, tabelaC[1], 	0, 			nil],
	["Outros Custeios e Investimentos",   grupo1c, nil, 		698495, 	nil], 
	["Reservas Orçamentárias", 			  grupo1c, nil, 		3440, 		nil],
	["Outros Custeios e Investimentos",   grupo2c, nil, 		10916, 		nil]
]
