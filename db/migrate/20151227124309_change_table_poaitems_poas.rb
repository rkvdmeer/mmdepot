class ChangeTablePoaitemsPoas < ActiveRecord::Migration
  def change
  	change_table :poaitems_poas do |t|
      t.integer :itemorder	
    end
  end
end
