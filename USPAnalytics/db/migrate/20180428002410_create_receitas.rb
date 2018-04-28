class CreateReceitas < ActiveRecord::Migration[5.1]
  def change
    create_table :receitas do |t|
      t.bigint :receita_tesouro_estado
      t.bigint :receita_propria_nao_vinculada
      t.bigint :rendimento_aplicacoes
      t.bigint :reembolsos
      t.bigint :outras_receitas
      t.bigint :receitas_vinculadas
      t.smallint :ano

      t.timestamps
    end
  end
end
