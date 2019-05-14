class CustomerConcern < ApplicationRecord
  # Direct associations

  belongs_to :customer,
             :counter_cache => true

  # Indirect associations

  # Validations

end
