class User < ApplicationRecord
  has_secure_password
  #validar el email y que sea unico.
  validates :email, presence: true, uniqueness: true
  belongs_to :role

  def to_token_payload
    {
      sub: id,
      email: email
    }
  end
end
