class AddFieldnameToEntradaSalidas < ActiveRecord::Migration[5.2]
  def change
    add_column :entrada_salidas, :datetimeExit, :timestamp
  end
end
