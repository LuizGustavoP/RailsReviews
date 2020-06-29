class Game < ApplicationRecord
  belongs_to :developer, optional: true
  belongs_to :publisher, optional: true
  belongs_to :platform, optional: true
  
  validates :nome, presence: true, length: {minimum: 1}
  validates :score, presence: true
  validates :publisher_id, presence: true
  validates :platform_id, presence: true
  validates :developer_id, presence: true
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
