class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :member_type, null: false
      t.string :occupation
      t.string :degree_level_name
      t.string :major_field_name
      t.string :minor_field_name
      t.string :field_keywords
      t.string :organization_one
      t.string :organization_two
      t.string :organization_three
      t.string :organization_four
      t.string :organization_five
      t.string :residence_country
      t.string :residence_city
      t.string :personal_website
      t.integer :user_id
      t.timestamps null: false
    end
  end
end