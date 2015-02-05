class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.string :organization, null: false
      t.string :title, null: false
      t.string :location_country, null: false
      t.string :location_city, null: false
      t.string :contact_details, null: false
      t.date :deadline, null: false
      t.integer :post_type, null: false
      t.decimal :salary
      t.string :keywords
      t.text :post_details
      t.integer :user_id
      t.integer :opportunity_category_id
      t.timestamps null: false
    end
  end
end
