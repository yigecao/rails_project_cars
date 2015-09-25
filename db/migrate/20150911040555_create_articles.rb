class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
    	t.string :title
      t.string :author
    	t.string :image
    	t.integer :year
    	t.string :make
    	t.string :model
    	t.string :region
    	t.string :body
    	t.integer :votes
      t.timestamps null: false
    end
  end
end
