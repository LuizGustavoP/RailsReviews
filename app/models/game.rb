class Game < ApplicationRecord
  #connection
  has_many :developers
  has_many :publishers 
  has_many :platforms

  def self.search(search)
    if search
      game = Game.find_by(nome: search)
        if game
          self.where(id: game)
        else
          @game = Game.all
        end
    else
      @game = Game.all
    end
  end
  
end
