class CreateMinorFields < ActiveRecord::Migration
  def change
    create_table :minor_fields do |t|
      t.integer :code, null: false
      t.string :name, null: false
      t.timestamps null: false
    end
  end
end
