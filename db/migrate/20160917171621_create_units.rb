class CreateUnits < ActiveRecord::Migration[5.0]
  def change
    create_table :units do |t|
      t.string :streetNumber
      t.string :streetAddress
      t.string :unitNumber
      t.string :city
      t.string :stateProvince
      t.string :country
      t.string :zipPostal

      t.timestamps
    end
  end
end
