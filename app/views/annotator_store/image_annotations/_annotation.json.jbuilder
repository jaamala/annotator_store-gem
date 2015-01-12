json.url image_annotation.url
json.text image_annotation.text
json.ranges []
json.quote ''
json.l do
  json.array! [0] do
    json.type image_annotation.shape
    json.units image_annotation.units
    geometry = JSON.parse(image_annotation.geometry)
    puts geometry.inspect
    json.a do
      json.x geometry['x']
      json.y geometry['y']
      json.width  geometry['width']
      json.height geometry['height']
    end
  end
end

# {
#   "url": "http://lloydbleekcollection.cs.uct.ac.za/images/stow/STOW_001.JPG",
#   "text": "sdfdfasdf",
#   "ranges": [],
#   "quote": "",
#   "closure_uid_k7l337": 6,
#   "l": [
#     {
#       "type": "rect",
#       "a": {
#         "x": 314,
#         "width": 261,
#         "y": 207,
#         "height": 188
#       }
#     }
#   ]
# }
