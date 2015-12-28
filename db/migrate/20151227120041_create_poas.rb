class CreatePoas < ActiveRecord::Migration
  def change
    create_table :poas do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
