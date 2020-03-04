class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.references :report,          foreign_key: true, index: true
      t.references :company,         foreign_key: true, index: true

      t.string :construction_name,   null: false
      t.string :contractor,          null: false
      t.string :industrial_accident, null: false
      t.string :order_source,        null: false
      t.string :process,             null: false
      t.string :slogan,              null: false

      t.timestamps null: false
    end
  end
end