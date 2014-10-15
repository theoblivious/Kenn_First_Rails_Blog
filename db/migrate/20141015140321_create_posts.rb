class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :subject
      t.string :string
      t.string :body
      t.date :published_at
      t.string :time
      t.boolean :draft_status

      t.timestamps
    end
  end
end
