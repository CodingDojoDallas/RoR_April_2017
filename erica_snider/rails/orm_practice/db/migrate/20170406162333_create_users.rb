class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      # t.string :string
      t.string :email
      t.string :password
      t.integer :age

      t.timestamps null: false
    end
  end
end


# rails g model User first_name:string last_name: string email:string password:string age:integer
