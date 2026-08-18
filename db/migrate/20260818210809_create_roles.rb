class CreateRoles < ActiveRecord::Migration[8.1]
  def change
    create_table :roles, primary_key: "id", id: :uuid do |t|
      t.string :name, unique: true, null: false, index: true
      t.string :description
      t.timestamps
    end
  end
end
