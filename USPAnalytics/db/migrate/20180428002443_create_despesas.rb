class CreateDespesas < ActiveRecord::Migration[5.1]
  def change
    create_table :despesas do |t|
      t.bigint :ativo
      t.bigint :aposentados
      t.bigint :folhas_avulsas
      t.bigint :auxilio_alimentacao
      t.bigint :vale_refeicao
      t.bigint :pasep
      t.bigint :adiatamento_ferias
      t.bigint :decimo_terceiro
      t.bigint :terco_ferias
      t.bigint :precatorios
      t.bigint :indenizacoes_pidv
      t.bigint :outros_custeios_investimentos
      t.bigint :reservas_orcamentarias
      t.bigint :despesas_custeadas_receitas_vinculadas
      t.smallint :ano

      t.timestamps
    end
  end
end
