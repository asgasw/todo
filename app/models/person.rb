class Person < ApplicationRecord
  belongs_to :section
  belongs_to :pc
  has_one :home
  has_one :photo
end
