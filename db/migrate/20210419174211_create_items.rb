class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :image
      t.string :quantity
      t.date :date_added
      t.date :expiration_date
      t.references :section, null: false, foreign_key: true

      t.timestamps
    end
  end
end
