class CreatePermissions < ActiveRecord::Migration[8.1]
  def change
    create_table :permissions, primary_key: "id", id: :uuid do |t|
      t.string :name, unique: true, null: false, index: true
      t.string :description
      t.boolean :read, default: false
      t.boolean :delete, default: false
      t.boolean :create, default: false
      t.boolean :update, default: false
    end
  end
end
