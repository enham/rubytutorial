class CreateGrantees < ActiveRecord::Migration
  def change
    create_table :grantees do |t|
      t.string :name
      t.string :address
      t.integer :grant_amount
      t.date :grant_date

      t.timestamps
    end
  end
end
