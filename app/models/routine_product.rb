class RoutineProduct < ApplicationRecord
  # Direct associations

  belongs_to :primary_concern,
             :required => false,
             :class_name => "Concern"

  belongs_to :routine,
             :counter_cache => true

  belongs_to :product,
             :counter_cache => true

  # Indirect associations

  # Validations

end
