class User < ApplicationRecord
    validates :name, :surname, :email, :tckn, :telefon, presence: true
    validates :email, :tckn, uniqueness: true
    validates :name, :surname, :email, length: { minimum: 2, maximum: 50}
    validates :tckn, :telefon, :telefon2, numericality: { only_integer: true }
end
