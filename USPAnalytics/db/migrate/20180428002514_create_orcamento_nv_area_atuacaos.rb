class CreateOrcamentoNvAreaAtuacaos < ActiveRecord::Migration[5.1]
  def change
    create_table :orcamento_nv_area_atuacaos do |t|
      t.string :area_item
      t.bigint :pessoal_ativo
      t.bigint :pessoal_inativo
      t.bigint :precatorio
      t.bigint :outros_custeios_investimentos
      t.bigint :reservas_orcamentarias
      t.decimal :proporcao
      t.smallint :ano

      t.timestamps
    end
  end
end
