class Film < ActiveRecord::Base
  attr_accessible :Director, :Duration, :Genre, :Title

  validates :Title, presence: true, length: { maximum: 50 }
end
