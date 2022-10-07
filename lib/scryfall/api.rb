# frozen_string_literal: true

module Scryfall
  # Contains the methods for initiating HTTP requests
  class API
    require 'json'
    require 'net/http'

    class ScryfallResponseError < StandardError; end

    def initialize(url = 'https://api.scryfall.com')
      @url = url
    end

    def get(params = {})
      uri = URI(@url + params[:path])
      uri.query = URI.encode_www_form(params) unless params.empty?
      response = Net::HTTP.get_response(uri)
      parsed_response = JSON.parse(response.body)

      raise ScryfallResponseError, parsed_response unless response.is_a?(Net::HTTPSuccess)

      parsed_response
    end
  end
end
