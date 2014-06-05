class CreateCitizenshipClasses < ActiveRecord::Migration
  def change
    create_table :citizenship_classes do |t|
      t.string :name
      t.string :instructor
      t.date :delivery_date
      t.integer :hours
      t.references :grantee

      t.timestamps
    end
    add_index :citizenship_classes, :grantee_id
  end
end
