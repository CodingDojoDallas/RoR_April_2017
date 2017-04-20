class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :date
      t.string :city
      t.references :state, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
