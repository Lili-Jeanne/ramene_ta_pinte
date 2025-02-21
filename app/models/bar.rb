class Bar < ApplicationRecord
  has_many :drinks, dependent: :destroy

  def to_s
    name
  end
end
