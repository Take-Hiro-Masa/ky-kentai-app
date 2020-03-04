class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.references :user,     null: false, foreign_key: true, index: true
      
      t.string :work_site,    null: false
      t.string :work_content, null: false
      t.string :leader,       null: false
      t.string :safety_goals, null: false
      t.string :workers,      null: false
      t.text   :ky,           null: false
      t.text   :measures,     null: false
      t.text   :sign


      t.timestamps null: false
    end
  end
end
