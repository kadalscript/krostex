class AddColumnsIdGudangKirimToMBeliPoFirstHs < ActiveRecord::Migration
  def up
      change_table(:m_beli_po_first_hs) do |t|
           t.string :id_gudang_kirim, limit: 10
      end
  end
end
