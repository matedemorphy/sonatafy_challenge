class CreateCars < ActiveRecord::Migration[7.0]
  def up
    create_enum :car_conditions, %w[new used]

    create_table :cars do |t|
      t.string :make, null: false
      t.string :model, null: false
      t.enum :condition, enum_type: :car_conditions, default: :new
      t.integer :price, null: false
      t.references :dealership, null: false, foreign_key: true

      t.timestamps
    end
  end

  def down
    execute <<-SQL
      DROP TYPE car_conditions;
    SQL
    drop_table :cars
  end
end
