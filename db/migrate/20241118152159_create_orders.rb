class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.date :start_date
      t.date :end_date
      t.integer :amount
      t.references :user, null: false, foreign_key: true
      t.references :party_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
