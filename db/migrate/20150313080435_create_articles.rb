class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :url
      t.string :title
      t.integer :upvotes
      t.timestamps
    end
  end
end
