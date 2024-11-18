class CreatePartyItems < ActiveRecord::Migration[7.1]
  def change
    create_table :party_items do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
