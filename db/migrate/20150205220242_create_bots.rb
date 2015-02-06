class CreateBots < ActiveRecord::Migration
  def change
    create_table :bots do |t|
      t.string :name
      t.string :function
      t.string :controls

      t.timestamps null: false
    end
  end
end
