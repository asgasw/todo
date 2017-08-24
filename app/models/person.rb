class Person < ApplicationRecord
  belongs_to :section
  belongs_to :pc
  has_many :home
end
