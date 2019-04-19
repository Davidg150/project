json.extract! jersey, :id, :country, :team, :year, :image_url, :description, :size, :price, :created_at, :updated_at
json.url jersey_url(jersey, format: :json)
