require 'addressable/uri'
require 'rest-client'

def index
  url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/contacts.json'
  ).to_s

  puts RestClient.get(url)
end

def create_contact
  url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/contacts.json'
  ).to_s

  puts RestClient.post(
  url,
  { contact: { name: "Bach", email: 'Bach@bach.com', user_id: 1} }
  )
end


def show_contact
  url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/contacts/1.json'
  ).to_s

  puts RestClient.get(url)
end

def update_contact
  url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/contacts/1.json'
  ).to_s

  puts RestClient.put(url,   { contact: { name: "Breakfast" } })
end

def destroy_contact
  url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/contacts/1.json'
  ).to_s

  puts RestClient.delete(url)

end
index
create_contact
show_contact
update_contact
destroy_contact

# url = Addressable::URI.new(
# scheme: 'http',
# host: 'localhost',
# port: 3000,
# path: '/contacts',
# ).to_s
#
# puts RestClient.get(url)
