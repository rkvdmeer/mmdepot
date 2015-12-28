class CreatePoaitems < ActiveRecord::Migration
  def change
    create_table :poaitems do |t|
      t.string :content, :limit => 1000
      t.integer :type

      t.timestamps
    end
  end
end
