class CreateMakes < ActiveRecord::Migration[5.1]
  def change
    create_table :makes do |t|
      t.string :model
      t.integer :age
      t.float :price
      t.integer :mileage
      t.string :color
      t.string :interior

      t.timestamps
    end
  end
end
