class Person < ApplicationRecord
  belongs_to :section
  belongs_to :pc
  has_one :home
  has_one :photo
  accepts_nested_attributes_for :photo
end
