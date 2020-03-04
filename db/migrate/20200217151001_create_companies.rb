class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :company_name,   null: false
      t.string :postal_code,    null: false
      t.string :prefecture,     null: false
      t.string :city,           null: false
      t.string :block,          null: false
      t.string :building
      t.string :phone_num,      null: false
      t.string :Representative, null: false
      
      t.timestamps null: false
    end
  end
end
