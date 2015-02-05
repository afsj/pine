class CreateOpportunityCategories < ActiveRecord::Migration
  def change
    create_table :opportunity_categories do |t|
      t.integer :post_type, null: false
      t.integer :code, null: false
      t.string :name, null: false
      t.timestamps null: false
    end
  end
end
