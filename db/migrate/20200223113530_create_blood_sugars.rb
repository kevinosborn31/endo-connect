class CreateBloodSugars < ActiveRecord::Migration[5.2]
  def change
    create_table :blood_sugars do |t|
      t.integer :user_id
      t.datetime :time
      t.integer :level

      t.timestamps
    end
  end
end
