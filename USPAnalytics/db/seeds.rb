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
	["Rendimento de Aplicações Financeiras", grupo1a, "Receita Própria não Vinculada", 27325.48, 	 0.53],
	["Reembolsos", 							 grupo1a, "Receita Própria não Vinculada",  19235.42, 	 0.37],
	["Outras Receitas", 					 grupo1a, "Receita Própria não Vinculada",  22920, 		 0.44], 
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
	["Precatórios" , 					  grupo1c, nil,  15239, 		nil],
	["Precatórios" , 					  grupo1c, "Pessoal",  15239, 		nil],
	["Indenizações PIDV", 				  grupo1c, "Pessoal", 	0, 			nil],
	["Outros Custeios e Investimentos",   grupo1c, nil, 		698495, 	nil], 
	["Reservas Orçamentárias", 			  grupo1c, nil, 		3440, 		nil],
	["Outros Custeios e Investimentos",   grupo2c, nil, 		10916, 		nil]
]


# Tabela D
grupo1d = "Pessoal e Reflexos"
grupo2d = "Outros custeios e Investimentos"
grupo3d = "Reservas orçamentárias"
tabelaD = [
	##### GRUPO 1
	["Folha",                grupo1d, nil,        3792150,     70.8],
	["Ativo",                grupo1d, "Folha", 2777135.53,  51,85],
	["Aposentados (SPPREV)", grupo1d, "Folha", 1015014.938, 18,95],
	["Outras folhas",        grupo1d, nil,        421201.279,  7.86],
	["Provisões",            grupo1d, nil,        425830.247,  7.95],
	[" Precatório",          grupo1d, nil,        15239.222,   0.28],
	#### GRUPO 2.1
	["Dotação Básica",            grupo2d, nil,        95546,      1.78],
	["Unidades de Ensino ",       grupo2d, "Dotação Básica", 56455,      1.05],
	["Institutos Especializados", grupo2d, "Dotação Básica", 1705,       0.03],
	["Museus",                    grupo2d, "Dotação Básica", 3051,       0.06],
	["Hospitais e Anexos",        grupo2d, "Dotação Básica", 14610,      0.27],
	["Órgãos  de Apoio",          grupo2d, "Dotação Básica", 10424,      0.19],
	["Órgãos  de Serviço",        grupo2d, "Dotação Básica", 1564,       0.03],
	["Prefeituras",               grupo2d, "Dotação Básica", 7737,       0.14],
	#### GRUPO 2.2
	["Adicionais", 				 		 					  grupo2d, nil, 	   		253377, 	 4.73],
	["Treinamento de Recursos Humanos",  					  grupo2d, "Adicionais", 	1340.982,    0.03],
	["Manutenção Predial", 									  grupo2d, "Adicionais", 	25269.97, 	 0.47],
	["Manutenção de Áreas Externas", 	 					  grupo2d, "Adicionais", 	3354.962, 	 0.06],
	["Manutenção de Sistema Viário", 	 					  grupo2d, "Adicionais", 	3360.967, 	 0.06],
	["Equipamentos Segurança", 			 					  grupo2d, "Adicionais", 	3790.497, 	 0.07],
	["Manutenção e Reposição de Equipamentos de Informática", grupo2d, "Adicionais", 	8658.171, 	 0.16],
	["Serviços de Limpeza e de Vigilância", 				  grupo2d, "Adicionais", 	195553.66,   3.65],
	["Despesas com Transporte", 							  grupo2d, "Adicionais", 	9174.879, 	 0.17],
	["Aluguel imóveis", 									  grupo2d, "Adicionais",		2874.08, 	 0.05],
	#### GRUPO 2.3
	["Política De Apoio À Permanência E Formação Estudantil", grupo2d, nil, 			73380, 1.37],
	["Programa de Bolsas e Auxílios", 						  grupo2d, tabelaD[24], 	73380, 1.37],
	#### GRUPO 2.4
	["Programa de Gestão Ambiental", grupo2d, nil, 1000, 0.02],
	#### GRUPO 2.5
	["Projetos Especiais",   grupo2d, nil,                   16886,      0,32],
	["Graduação",            grupo2d, "Projetos Especiais", 10294,      0,19],
	["Pós-Gradução",         grupo2d, "Projetos Especiais", 1101,       0.02],
	["Pesquisa",             grupo2d, "Projetos Especiais", 2161,       0.04],
	["Cultura e Extensão",   grupo2d, "Projetos Especiais", 1338,       0.02],
	["Reitoria",             grupo2d, "Projetos Especiais", 1992,       0.04],
	#### GRUPO 2.6
	["Reservas Específicas", grupo2d, nil,                    400,       0.01],
	#### GRUPO 2.7
	["Atividades Integradas",                          grupo2d, nil,                     257906,    4.81],
	["Avaliação Institucional",                        grupo2d, "Atividades Integradas", 247,       0.00],
	["Assistência Médica e Odontológica",              grupo2d, "Atividades Integradas", 27697.724, 0.52],
	["Material Bibliográfico",                         grupo2d, "Atividades Integradas", 12000,     0.22],
	["Cooperação Acadêmica Nacional e Internacional",  grupo2d, "Atividades Integradas", 1838.2,    0.03],
	["Obras",                                          grupo2d, "Atividades Integradas", 40540,     0.76],
	["Biotérios",                                      grupo2d, "Atividades Integradas", 6000,      0.11],
	["Programa Integrado de Segurança",                grupo2d, "Atividades Integradas", 6000,      0.11],
	["Informática",                                    grupo2d, "Atividades Integradas", 20000,     0.37],
	["Restaurantes Universitários",                    grupo2d, "Atividades Integradas", 37922,     0.71],
	["Creches",                                        grupo2d, "Atividades Integradas", 1440,      0.03],
	["Serviços de Utilidade Pública",                  grupo2d, "Atividades Integradas", 98094,     1.83],
	["Sistema de Frota de Veículos",                   grupo2d, "Atividades Integradas", 1063,      0.02],
	["Renovação da Frota de Veículos Especiais",       grupo2d, "Atividades Integradas", 500,       0.01],
	["Taxas Municipais",                               grupo2d, "Atividades Integradas", 1669,      0.03],
	["Escola Técnica e de Gestão da USP",              grupo2d, "Atividades Integradas", 670,       0.01],
	["Reservas Ecológicas",                            grupo2d, "Atividades Integradas", 2000,      0.04],
	["Taxas para proteção à propriedade intelectual",  grupo2d, "Atividades Integradas", 225,       0.00],
	#### GRUPO 3
	["Reserva de Contingência", grupo3d, nil, 3440, 0.06],
	["Reserva Patrimonial de Contingência", grupo3d, nil, 0, 0],
]

tabelaA.each do | alinea, grupo, parent, proposta_orcamentaria, participacao|
  DespesaDetalhe.create( alinea: alinea, grupo: grupo, parent: parent, proposta_orcamentaria: proposta_orcamentaria, 
  							participacao: participacao, ano: 2018)
end

tabelaB.each do | alinea, grupo, parent, proposta_orcamentaria, participacao|
  DespesaDetalhe.create( alinea: alinea, grupo: grupo, parent: parent, proposta_orcamentaria: proposta_orcamentaria, 
  							participacao: participacao, ano: 2018)
end

tabelaC.each do | alinea, grupo, parent, proposta_orcamentaria, participacao|
  DespesaDetalhe.create( alinea: alinea, grupo: grupo, parent: parent, proposta_orcamentaria: proposta_orcamentaria, 
  							participacao: participacao, ano: 2018)
end

tabelaD.each do | alinea, grupo, parent, proposta_orcamentaria, participacao|
  DespesaDetalhe.create( alinea: alinea, grupo: grupo, parent: parent, proposta_orcamentaria: proposta_orcamentaria, 
  							participacao: participacao, ano: 2018)
end