class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text :message
      t.string :author
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
