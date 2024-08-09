json.extract! product, :id,:ProductCode, :ProductName, :ProductDescription, :ProductCategory, :ProductUnitPrice, :created_at, :updated_at
json.url product_url(product, format: :json)
