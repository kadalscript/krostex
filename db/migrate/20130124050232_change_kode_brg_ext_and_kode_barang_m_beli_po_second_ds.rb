class ChangeKodeBrgExtAndKodeBarangMBeliPoSecondDs < ActiveRecord::Migration
  def change
    add_column :m_beli_po_second_ds, :kode_brg_ext, :string
    rename_column :m_beli_po_second_ds, :kode_barang, :kode_brg
  end
end


