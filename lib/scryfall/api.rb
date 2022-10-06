# frozen_string_literal: true

module Scryfall
  class API
    require 'json'
    require 'net/http'

    def initialize(url = 'https://api.scryfall.com')
      @url = url
    end

    def get(params = {})
      uri = URI(@url + params['path'])
      uri.query = URI.encode_www_form(params) unless params.empty?
      res = Net::HTTP.get_response(uri)
      JSON.parse res.body if res.is_a?(Net::HTTPSuccess)
    end
  end
end
