class CreateTrucks < ActiveRecord::Migration[6.1]
  def change
    create_table :trucks do |t|
      t.string :name
      t.string :truck_type
      t.string :year
      t.string :capacity
      t.boolean :reserved, default => false

      t.timestamps
    end
  end
end
