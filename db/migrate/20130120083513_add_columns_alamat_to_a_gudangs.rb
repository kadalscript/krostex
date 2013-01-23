class AddColumnsAlamatToAGudangs < ActiveRecord::Migration
  def up
      change_table(:a_gudangs) do |t|
           t.string :alamat_title, limit: 99
           t.string :alamat_01, limit: 99
           t.string :alamat_02, limit: 99
           t.string :alamat_03, limit: 99
      end
  end
end

