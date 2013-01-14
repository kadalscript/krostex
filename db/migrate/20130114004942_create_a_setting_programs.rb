class CreateASettingPrograms < ActiveRecord::Migration
  def change
    create_table :a_setting_programs do |t|
      t.string :id_company
      t.string :id_gudang

      t.timestamps
    end
  end
end
