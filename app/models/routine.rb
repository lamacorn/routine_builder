class Routine < ApplicationRecord
  # Direct associations

  has_many   :routine_products,
             :dependent => :destroy

  belongs_to :customer,
             :counter_cache => true

  # Indirect associations

  # Validations

end
