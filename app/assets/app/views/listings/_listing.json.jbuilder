json.extract! listing, :id, :title, :price, :category_id, :description, :quantity, :measurement_id, :created_at, :updated_at
json.url listing_url(listing, format: :json)
