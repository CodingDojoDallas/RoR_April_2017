class AddPostIdColumnToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :post_id, :numerical
  end
end
