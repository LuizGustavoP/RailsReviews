json.extract! game, :id, :nome, :score, :created_at, :updated_at
json.url game_url(game, format: :json)
