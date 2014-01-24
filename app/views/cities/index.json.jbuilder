JBuilder.encode do |json|
json.array! @cities do |city|
  json.id city.id
end
end