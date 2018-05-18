# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180518195747) do

  create_table "despesa_detalhes", force: :cascade do |t|
    t.string "alinea"
    t.string "grupo"
    t.bigint "proposta_orcamentaria"
    t.decimal "participacao"
    t.integer "ano"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "despesas", force: :cascade do |t|
    t.bigint "ativo"
    t.bigint "aposentados"
    t.bigint "folhas_avulsas"
    t.bigint "auxilio_alimentacao"
    t.bigint "vale_refeicao"
    t.bigint "pasep"
    t.bigint "adiatamento_ferias"
    t.bigint "decimo_terceiro"
    t.bigint "terco_ferias"
    t.bigint "precatorios"
    t.bigint "indenizacoes_pidv"
    t.bigint "outros_custeios_investimentos"
    t.bigint "reservas_orcamentarias"
    t.bigint "despesas_custeadas_receitas_vinculadas"
    t.integer "ano"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orcamento_nv_area_atuacaos", force: :cascade do |t|
    t.string "area_item"
    t.integer "pessoal_ativo", limit: 8
    t.integer "pessoal_inativo", limit: 8
    t.integer "precatorio", limit: 8
    t.integer "outros_custeios_investimentos", limit: 8
    t.integer "reservas_orcamentarias", limit: 8
    t.decimal "proporcao"
    t.integer "ano"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orcamento_nv_institutos_especializados", force: :cascade do |t|
    t.string "unidade"
    t.string "categoria"
    t.bigint "pessoal_ativo"
    t.bigint "pessoal_inativo"
    t.bigint "dotacao"
    t.bigint "outros_custeios_investimentos_dotacao_basica_adicionais"
    t.bigint "outros_custeios_investimentos_utilidade_publica"
    t.integer "ano"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orcamento_nv_unidade_ensino_pesquisas", force: :cascade do |t|
    t.string "unidade_ensino_pesquisa"
    t.bigint "pessoal_ativo"
    t.bigint "pessoal_inativo"
    t.bigint "dotacao"
    t.bigint "outros_custeios_investimentos_dotacao_basica_adicionais"
    t.bigint "outros_custeios_investimentos_utilidade_publica"
    t.integer "ano"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orcamento_orgao_apoios", force: :cascade do |t|
    t.string "orgao_apoio"
    t.bigint "pessoal_ativo"
    t.bigint "pessoal_inativo"
    t.bigint "dotacao"
    t.bigint "outros_custeios_investimentos_dotacao_basica_adicionais"
    t.bigint "outros_custeios_investimentos_utilidade_publica"
    t.integer "ano"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orcamento_orgao_servicos", force: :cascade do |t|
    t.string "orgao_servico"
    t.bigint "pessoal_ativo"
    t.bigint "pessoal_inativo"
    t.bigint "dotacao"
    t.bigint "outros_custeios_investimentos_dotacao_basica_adicionais"
    t.bigint "outros_custeios_investimentos_utilidade_publica"
    t.integer "ano"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "receitas", force: :cascade do |t|
    t.bigint "receita_tesouro_estado"
    t.bigint "receita_propria_nao_vinculada"
    t.bigint "rendimento_aplicacoes"
    t.bigint "reembolsos"
    t.bigint "outras_receitas"
    t.bigint "receitas_vinculadas"
    t.integer "ano"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
