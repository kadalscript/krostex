class AddColumnsIdGudangRejectToASettingPrograms < ActiveRecord::Migration
  def up
      change_table(:a_setting_programs) do |t|
           t.string :id_gudang_reject, limit: 10
           t.string :kat_alamat_ktr_supplier, limit: 20
      end
  end
end

