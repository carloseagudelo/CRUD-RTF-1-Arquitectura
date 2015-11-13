class Coment < ActiveRecord::Base
  belongs_to :socio
  belongs_to :movie
end
