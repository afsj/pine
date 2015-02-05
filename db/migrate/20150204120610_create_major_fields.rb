class CreateMajorFields < ActiveRecord::Migration
  def change
    create_table :major_fields do |t|
      t.integer :code, null: false
      t.string :name, null: false
      t.timestamps null: false
    end
  end
end
