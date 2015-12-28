class CreateJoinTablePoasPoaitems < ActiveRecord::Migration
  def change
    create_join_table :poas, :poaitems do |t|
       t.index [:poa_id, :poaitem_id]
       t.index [:poaitem_id, :poa_id]
    end
  end
end
