class CreateTimeDisplays < ActiveRecord::Migration
  def change
    create_table :time_displays do |t|
      t.datetime :display

      t.timestamps null: false
    end
  end
end
