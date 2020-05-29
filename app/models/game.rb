class Game < ApplicationRecord
  #connection
  has_many :developers
  has_many :publishers 
  has_many :platforms
  
end
