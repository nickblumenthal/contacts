require 'addressable/uri'
require 'rest-client'

def create
  url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: 'users/2/comments.json'
  ).to_s

  puts RestClient.post(url, {comment: {content: 'You are awesome' }})
end

create
