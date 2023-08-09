json.extract! product, :id, :name, :label, :condtion, :created_at, :updated_at
json.url product_url(product, format: :json)
