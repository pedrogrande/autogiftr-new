class CreateOccasions < ActiveRecord::Migration
  def change
    create_table :occasions do |t|
      t.text :message
      t.string :name
      t.date :date
      t.string :occastion_type
      t.references :recipient, index: true

      t.timestamps
    end
  end
end
