class CreateTrains < ActiveRecord::Migration[5.2]
  def change
    create_table :trains do |t|
      t.integer :number

      t.timestamps
    end
  end
end
