class CreateOrcamentoNvUnidadeEnsinoPesquisas < ActiveRecord::Migration[5.1]
  def change
    create_table :orcamento_nv_unidade_ensino_pesquisas do |t|
      t.string :unidade_ensino_pesquisa
      t.bigint :pessoal_ativo
      t.bigint :pessoal_inativo
      t.bigint :dotacao
      t.bigint :outros_custeios_investimentos_dotacao_basica_adicionais
      t.bigint :outros_custeios_investimentos_utilidade_publica
      t.smallint :ano

      t.timestamps
    end
  end
end
