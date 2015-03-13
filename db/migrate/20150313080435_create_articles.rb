class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :url
      t.string :title
      t.integer :upvotes, default: 0
      t.timestamps
    end
  end
end
