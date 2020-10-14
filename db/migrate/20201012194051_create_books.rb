class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.integer :user_id, null: false
      t.string :title, null: false
      t.string :book_image_id, null: false
      t.string :body, null: false
      t.string :tag, null: false
      t.string :author, null: false
      t.string :company, null: false
      t.string :year, null: false
      t.timestamps
    end
  end
end
