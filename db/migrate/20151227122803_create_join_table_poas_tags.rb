class CreateJoinTablePoasTags < ActiveRecord::Migration
  def change
    create_join_table :poas, :tags do |t|
       t.index [:poa_id, :tag_id]
       t.index [:tag_id, :poa_id]
    end
  end
end
