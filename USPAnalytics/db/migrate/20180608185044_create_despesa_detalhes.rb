class CreateDespesaDetalhes < ActiveRecord::Migration[5.1]
  def change
    create_table :despesa_detalhes do |t|
      t.string :alinea
      t.string :grupo
      t.string :parent
      t.bigint :proposta_orcamentaria
      t.decimal :participacao
      t.integer :ano

      t.timestamps
    end
  end
end
