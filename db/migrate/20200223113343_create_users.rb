class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :medicare
      t.integer :ndss
      t.integer :phone
      t.string :email
      t.text :location
      t.string :specialization
      t.integer :user_type
      t.boolean :admin
      t.text :password_digest

      t.timestamps
    end
  end
end
