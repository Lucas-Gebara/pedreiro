class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :offers, dependent: :destroy
  has_one  :portfolio, dependent: :destroy
  has_many :bookings, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :address, presence: true
  validates :cpf, presence: true, uniqueness: true
  validates :phone, presence: true, uniqueness: true


end
