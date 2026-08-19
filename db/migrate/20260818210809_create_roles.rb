class CreateRoles < ActiveRecord::Migration[8.1]
  def change
    create_table :roles, primary_key: "id", id: :uuid do |t|
      t.string :name, null: false
      t.string :description
      t.timestamps
    end
  end
end
