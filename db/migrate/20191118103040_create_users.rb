class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :name
      t.text :username
      t.string :email

      t.timestamps
    end
  end
end
