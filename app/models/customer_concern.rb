class CustomerConcern < ApplicationRecord
  # Direct associations

  belongs_to :concern,
             :counter_cache => true

  belongs_to :customer,
             :counter_cache => true

  # Indirect associations

  # Validations

end
