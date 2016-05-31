class DropTagsTable < ActiveRecord::Migration
  def change
    drop_table :tags
    drop_table :blog_tag_ships
  end
end
