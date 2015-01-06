require 'addressable/uri'
require 'rest-client'

def index
  url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users.json'
  ).to_s

  puts RestClient.get(url)
end

def create_user
  url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users.json'
  ).to_s

  puts RestClient.post(
  url,
  { user: { username: "Bach"} }
  )
end


def show_user
  url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/1.json'
  ).to_s

  puts RestClient.get(url)
end

def update_user
  url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/1.json'
  ).to_s

  puts RestClient.put(url,   { user: { username: "Breakfast" } })
end

def destroy_user
  url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/1.json'
  ).to_s

  puts RestClient.delete(url)

end
index
create_user
show_user
update_user
destroy_user

# url = Addressable::URI.new(
# scheme: 'http',
# host: 'localhost',
# port: 3000,
# path: '/users',
# ).to_s
#
# puts RestClient.get(url)
