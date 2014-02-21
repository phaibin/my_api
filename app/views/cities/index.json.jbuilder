json.message @response.message
json.code @response.code
json.header @response.header
json.result do
  @response.result.each do |k, v|
    json.set! k do
      json.array! v do |city|
        json.id city.id
        json.name city.name_cn
        json.latitude city.latitude
        json.longitude city.longitude
      end
    end
  end
end
json.page @response.page
json.foot @response.foot
