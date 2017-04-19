class CreateRpgs < ActiveRecord::Migration
  def change
    create_table :rpgs do |t|
      t.string :farm
      t.string :cave
      t.string :house
      t.string :casino

      t.timestamps null: false
    end
  end
end
