class Film < ActiveRecord::Base
  attr_accessible :Director, :Duration, :Genre, :Title
end
