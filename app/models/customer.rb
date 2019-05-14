class Customer < ApplicationRecord
  # Direct associations

  has_many   :routines,
             :dependent => :destroy

  has_many   :customer_concerns,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
