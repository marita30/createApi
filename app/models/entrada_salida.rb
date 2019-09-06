class EntradaSalida < ApplicationRecord
  belongs_to :user
  #Validar que los campos datetime y user_id no vengan nil
  validates :user_id, presence: true


end
