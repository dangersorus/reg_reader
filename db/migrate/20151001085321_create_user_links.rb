class CreateUserLinks < ActiveRecord::Migration
  def change
    create_table :user_links do |t|
      t.integer :user_id, null: false
      t.string :url, null: false
      t.string :tag, null: false
      t.string :title, null: false
      t.string :summary, null: false
      t.string :author, null: false
      t.string null: false
      t.index [:user_id, :tag], unique: true
    end
  end
end
