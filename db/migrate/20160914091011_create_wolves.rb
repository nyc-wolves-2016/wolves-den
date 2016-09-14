class CreateWolves < ActiveRecord::Migration
  def change
    create_table :wolves do |t|
      t.string :name, null: false
      t.string :description

      t.timestamps
    end
  end
end
