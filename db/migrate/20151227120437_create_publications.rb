class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :name
      t.integer :year

      t.timestamps
    end
    add_foreign_key :publications, :poaitems
  end
end
