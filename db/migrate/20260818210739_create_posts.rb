class CreatePosts < ActiveRecord::Migration[8.1]
  def change
    create_table :posts, primary_key: "id", id: :uuid do |t|
      t.string :title, null: false, index: true
      t.string :description
      t.text :content
      t.string :author, null: false
      t.timestamps
    end
  end
end
''