json.extract! receita, :id, :receita_tesouro_estado, :receita_propria_nao_vinculada, :rendimento_aplicacoes, :reembolsos, :outras_receitas, :receitas_vinculadas, :ano, :created_at, :updated_at
json.url receita_url(receita, format: :json)
