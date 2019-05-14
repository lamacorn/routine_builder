class RoutineProduct < ApplicationRecord
  # Direct associations

  belongs_to :routine,
             :counter_cache => true

  belongs_to :product,
             :counter_cache => true

  # Indirect associations

  # Validations

end
