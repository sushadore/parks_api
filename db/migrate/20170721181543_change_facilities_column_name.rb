class ChangeFacilitiesColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :facilities, :type, :amenity
  end
end
