require 'json'
require 'pg'

json_file = File.read("new_site.json")
json_hash = JSON.parse(json_file)

json_hash.each do |hash_item|
  p hash_item("title")
end

=begin
ruby take in values for db values,
ruby parse values into json object,
ruby insert json object to
=end
