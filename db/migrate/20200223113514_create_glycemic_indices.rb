class CreateGlycemicIndices < ActiveRecord::Migration[5.2]
  def change
    create_table :glycemic_indices do |t|
      t.string :food
      t.integer :gi

      t.timestamps
    end
  end
end
