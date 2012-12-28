class CreateATemplateCats < ActiveRecord::Migration
  def change
    create_table :a_template_cats do |t|
      t.string :kategori, limit: 20
      t.string :kode, default_value: 0
      t.string :nama, limit: 30
      t.string :simbol, limit: 20
      t.integer :status1, default_value: 0
      t.string :st_progress, limit: 20, default_value: 'active'
      t.string :updated_by, limit: 30

      t.timestamps
    end
  end
end
