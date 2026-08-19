class CreateUsers < ActiveRecord::Migration[8.1]
  def change
    create_table :users, primary_key: "id", id: :uuid do |t|
      t.string :username, null: false, index: true
      t.string :email, null: false, unique: true, index: true
      t.string :password, null: false
    end
  end
end
