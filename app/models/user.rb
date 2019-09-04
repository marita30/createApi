class User < ApplicationRecord
  # metodo de autentificacion
  has_secure_password
  belongs_to :role
  validates :email, presence: true

  def to_token_payload
    {
      sub: id,
      email: email
    }
  end
end
