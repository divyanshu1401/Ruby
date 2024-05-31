class AddColumnsToVehicleTable < ActiveRecord::Migration[7.1]
  def change
    add_column :vehicles, :airbags, :boolean
    add_column :vehicles, :abs, :boolean
  end
end
