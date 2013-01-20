class AddColumnIsDraftedToMBeliNotaFirstHs < ActiveRecord::Migration
  def change
    add_column :m_beli_nota_first_hs, :is_drafted, :boolean
  end
end
