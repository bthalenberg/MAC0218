class CreateOrcamentoOrgaoApoios < ActiveRecord::Migration[5.1]
  def change
    create_table :orcamento_orgao_apoios do |t|
      t.string :orgao_apoio
      t.bigint :pessoal_ativo
      t.bigint :pessoal_inativo
      t.bigint :dotacao
      t.bigint :outros_custeios_investimentos_dotacao_basica_adicionais
      t.bigint :outros_custeios_investimentos_utilidade_publica
      t.integer :ano

      t.timestamps
    end
  end
end
