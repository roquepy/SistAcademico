class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  attr_accessible :nombre, :apellido, :sexo, :telefono, :fecha_nacimiento, :lugar_nacimiento, :direccion, :edad, :username, :email, :password, :password_confirmation

  before_save { |user| user.email = email.downcase }
  validates :username, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates_confirmation_of :password
  validates :nombre, presence: true, length: { maximum: 50 }
  validates :apellido, presence: true, length: { maximum: 50 }
  validates :sexo, presence: true, length: { maximum: 2 }
  validates :telefono, presence: true, length: { maximum: 50 }
  validates :fecha_nacimiento, presence: true, length: { maximum: 50 }
  validates :lugar_nacimiento, presence: true, length: { maximum: 50 }
  validates :direccion, presence: true, length: { maximum: 50 }
  validates :edad, presence: true
end