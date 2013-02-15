class AddColumnQtyKemasanBtbMBeliPoSecondDs < ActiveRecord::Migration
  def change
    add_column :m_beli_po_second_ds, :qty_kemasan_btb, :decimal
    add_column :m_beli_po_second_ds, :no_revisi, :string, limit: 2
  end
end
