class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps null: false
    end
  end
end
