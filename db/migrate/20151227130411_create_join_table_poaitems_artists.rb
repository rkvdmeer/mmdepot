class CreateJoinTablePoaitemsArtists < ActiveRecord::Migration
  def change
    create_join_table :poaitems, :artists do |t|
       t.index [:poaitem_id, :artist_id]
       t.index [:artist_id, :poaitem_id]
    end
  end
end
