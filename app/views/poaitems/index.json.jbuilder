json.array!(@poaitems) do |poaitem|
  json.extract! poaitem, :id, :content, :type
  json.url poaitem_url(poaitem, format: :json)
end
