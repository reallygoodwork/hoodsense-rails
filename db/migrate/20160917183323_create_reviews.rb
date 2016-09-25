class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.references :unit, foreign_key: true
      t.references :user, foreign_key: true
      t.string :title
      t.string :review
      t.date :movedin
      t.date :movedout
      t.boolean :gas_included
      t.integer :gas_price
      t.boolean :hydro_included
      t.integer :hydro_price
      t.boolean :water_included
      t.integer :water_price
      t.boolean :pet_friendly
      t.boolean :outdoor_space
      t.boolean :laundry
      t.string :laundry_cost
      t.boolean :leaks
      t.boolean :mice
      t.boolean :concierge

      t.timestamps
    end
  end
end
