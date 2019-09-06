class RenameDate < ActiveRecord::Migration[5.2]
  def change
    rename_column :entrada_salidas, :datetime, :datetimeEntrance
  end
end
