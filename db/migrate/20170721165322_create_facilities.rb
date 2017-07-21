class CreateFacilities < ActiveRecord::Migration[5.1]
  def change
    create_table :facilities do |t|
      t.string :type
      t.string :description
      t.integer :park_id

      t.timestamps
    end
  end
end
