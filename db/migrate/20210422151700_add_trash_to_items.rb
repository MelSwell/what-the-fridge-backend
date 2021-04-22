class AddTrashToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :trash, :boolean, :default => false
  end
end
