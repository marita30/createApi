class AddValueToEntradaSalidas < ActiveRecord::Migration[5.2]
  def change
    add_column :entrada_salidas, :date, :timestamp
  end
end
