class CreateComments < ActiveRecord::Migration[8.1]
  def change
    create_table :comments, primary_key: "id", id: :uuid do |t|
      t.string :content, null: false
      t.references :post, type: :uuid, null: false, foreign_key: true
      t.references :user, type: :uuid, null: false, foreign_key: true
      t.timestamps
    end
  end
end
