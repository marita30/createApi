class CreateEntradaSalidas < ActiveRecord::Migration[5.2]
  def change
    create_table :entrada_salidas do |t|
      t.timestamp :datetime
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
