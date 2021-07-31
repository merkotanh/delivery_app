class AddIndexToPackages < ActiveRecord::Migration[5.2]
  def change
    add_index :packages, :tracking_number, unique: true
  end
end
