class Movie < ActiveRecord::Base
  belongs_to :horary
  belongs_to :hall
  belongs_to :quality
  belongs_to :chair
end
