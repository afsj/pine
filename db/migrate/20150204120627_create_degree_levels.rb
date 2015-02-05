class CreateDegreeLevels < ActiveRecord::Migration
  def change
    create_table :degree_levels do |t|
      t.integer :code, null: false
      t.string :name, null: false
      t.timestamps null: false
    end
  end
end
