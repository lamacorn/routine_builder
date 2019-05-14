class Product < ApplicationRecord
  # Direct associations

  belongs_to :category,
             :counter_cache => true

  has_many   :routine_products,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
