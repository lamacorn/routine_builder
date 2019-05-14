class RoutineProduct < ApplicationRecord
  # Direct associations

  belongs_to :product,
             :counter_cache => true

  # Indirect associations

  # Validations

end
