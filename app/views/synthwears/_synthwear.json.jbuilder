json.extract! synthwear, :id, :created_at, :updated_at
json.url synthwear_url(synthwear, format: :json)

json.id synthwear.id
json.name synthwear.name
json.price synthwear.price
json.description synthwear.description
json.image_url synthwear.image_url

