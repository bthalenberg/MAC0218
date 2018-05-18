class RenameColumnAnonoinTableOrcamentoNvAreaAtuacaosToAno < ActiveRecord::Migration[5.1]
  def change
    rename_column :orcamento_nv_area_atuacaos, :anono, :ano
  end
end
