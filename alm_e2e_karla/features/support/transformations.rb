Transform /on the "(.*?)" page/ do |location|
  new_location = location.downcase.gsub /\s/, '_'
  page_object = location.split.map(&:capitalize).join + "Page"

  { location: new_location, page_object: page_object}
end