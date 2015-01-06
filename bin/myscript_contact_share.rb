require 'addressable/uri'
require 'rest-client'

def create
  url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/contact_shares.json'
  ).to_s

  puts RestClient.post(url, {contact_share: {contact_id: 1, user_id: 2}})
end

def delete
  url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/contact_shares/1.json'
  ).to_s

  puts RestClient.delete(url)
end

create
delete
