json.array!(@things) do |thing|
  json.extract! thing, 
  json.url thing_url(thing, format: :json)
end
