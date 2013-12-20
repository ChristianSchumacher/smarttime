class CreateHirecares < ActiveRecord::Migration
  def change
    create_table :hirecares do |t|
      t.string :badge
      t.date :regestration_date
      t.string :fuel
      t.string :brand
      t.string :model
      t.boolean :smoking
      t.text :defects
      t.integer :status_id
      t.date :tech_check
      t.text :comment

      t.timestamps
    end
  end
end
