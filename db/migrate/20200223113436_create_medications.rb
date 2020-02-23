class CreateMedications < ActiveRecord::Migration[5.2]
  def change
    create_table :medications do |t|
      t.string :name
      t.integer :dosage
      t.text :instructions

      t.timestamps
    end
  end
end
