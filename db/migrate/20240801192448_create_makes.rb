class CreateMakes < ActiveRecord::Migration[7.0]
  def change
    create_table :makes do |t|
      t.integer :year
      t.string :plate

      t.timestamps
    end
  end
end
