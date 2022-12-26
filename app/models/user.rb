class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :trackable
  
  enum role: [:customer, :admin, :superadmin]
  after_initialize :new_record?

  validates :surname, :phone, presence: true
  validates :email, presence: true, confirmation: { case_sensitive: false }
  validates :name, presence: true, length: { minimum: 2 }
  validates :tckn, presence: true, length: { is: 11 }
  validates :phone, phone: { possible: true, allow_blank: false, types: [:voip, :mobile] }
  validates :tckn, numericality: { only_integer: true }
  validates :email, :tckn, :phone, uniqueness: true

end
