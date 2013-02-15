class ChangeKodeBrgExtAndKodeBarangMBeliPoSecondDs < ActiveRecord::Migration
  def change
    add_column :m_beli_po_second_ds, :kode_brg_ext, :string     , limit: 30
    rename_column :m_beli_po_second_ds, :kode_barang, :kode_brg , limit: 20
    add_column :m_beli_nota_second_ds, :kode_brg_ext, :string   , limit:30
    rename_column :m_beli_nota_second_ds, :kode_barang, :kode_brg , limit:20
  end
end


