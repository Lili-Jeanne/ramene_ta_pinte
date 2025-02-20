class Drink < ApplicationRecord
  belongs_to :bar
  has_and_belongs_to_many :bars

  def to_s
    name
  end
end
