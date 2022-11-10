class CreateDealerships < ActiveRecord::Migration[7.0]
  def change
    create_table :dealerships do |t|
      t.string :location, null: false
      t.string :address, null: false
      t.string :phone_number, null: false
      t.string :cell_phone_number, null: false
      t.string :email, null: false

      t.timestamps
    end
  end
end
