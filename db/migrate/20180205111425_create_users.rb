class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :string
      t.string :username
      t.string :string
      t.string :password
      t.string :string

      t.timestamps
    end
  end
end
