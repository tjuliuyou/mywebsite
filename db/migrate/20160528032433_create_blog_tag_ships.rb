class CreateBlogTagShips < ActiveRecord::Migration
  def change
    create_table :blog_tag_ships do |t|
      t.references :blog
      t.references :tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
