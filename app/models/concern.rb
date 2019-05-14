class Concern < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  # Direct associations

  has_many   :routine_products,
             :foreign_key => "primary_concern_id",
             :dependent => :nullify

  has_many   :customer_concerns,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
