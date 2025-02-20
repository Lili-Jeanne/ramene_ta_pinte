class Bar < ApplicationRecord
  has_many :drinks

  def to_s
    name
  end
end
