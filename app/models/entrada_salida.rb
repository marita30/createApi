class EntradaSalida < ApplicationRecord
  belongs_to :user
  #Validar que los campos datetime y user_id no vengan nil
  validates :datetime, :user_id, presence: true


end
