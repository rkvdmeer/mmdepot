class ChangeTableArtistsPoaitemsPoas < ActiveRecord::Migration
  def change
   	change_table :artists_poaitems do |t|
      t.string :name
      t.integer :year
    end
  end
end
