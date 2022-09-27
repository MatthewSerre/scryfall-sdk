class Scryfall::API
    require 'json'
    require 'net/http'

    def initialize(url = 'https://api.scryfall.com')
        @url = url
    end

    def get(path = '', params = {}, **args)
        uri = URI(@url + path)
        uri.query = URI.encode_www_form(params) unless params.empty?
        res = Net::HTTP.get_response(uri)
        JSON.parse res.body if res.is_a?(Net::HTTPSuccess)
    end
end