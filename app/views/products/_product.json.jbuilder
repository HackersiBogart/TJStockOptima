json.extract! product, :id, :ProductID, :ProductCode, :ProductName, :ProductDescription, :ProductCategory, :ProductUnitPrice, :created_at, :updated_at
json.url product_url(product, format: :json)
