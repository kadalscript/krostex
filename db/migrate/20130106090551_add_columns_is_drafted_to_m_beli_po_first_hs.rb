class AddColumnsIsDraftedToMBeliPoFirstHs < ActiveRecord::Migration
  def change
    add_column :m_beli_po_first_hs, :is_drafted, :boolean
  end
end
