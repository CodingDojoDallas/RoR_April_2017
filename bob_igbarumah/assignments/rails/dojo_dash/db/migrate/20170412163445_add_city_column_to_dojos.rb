class AddCityColumnToDojos < ActiveRecord::Migration[5.0]
  def change
    add_column :dojos, :city, :string
  end
end
