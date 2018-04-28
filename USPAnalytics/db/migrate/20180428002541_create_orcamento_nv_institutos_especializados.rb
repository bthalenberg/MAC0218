class CreateOrcamentoNvInstitutosEspecializados < ActiveRecord::Migration[5.1]
  def change
    create_table :orcamento_nv_institutos_especializados do |t|
      t.string :unidade
      t.string :categoria
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
