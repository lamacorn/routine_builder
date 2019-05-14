class Concern < ApplicationRecord
  # Direct associations

  has_many   :customer_concerns,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
