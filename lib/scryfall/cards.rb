# frozen_string_literal: true

require 'scryfall/base'

module Scryfall
  # Contains the methods for interacting with Scryfall's cards API endpoints
  class Cards < Scryfall::Base
    def self.search(query:, page: 1)
      params = { path: '/cards/search', q: query.encode }
      params[:page] = page unless page.nil? || page == 1
      api.get(params)
    end

    def self.named(query:, exact: false, set: nil)
      params = { path: '/cards/named', fuzzy: query.encode }
      params[:exact] = params.delete :fuzzy if exact
      params[:set] = set unless set.nil?
      api.get(params)
    end
    def self.autocomplete(query)
        params = { q: query.encode }
        params['path'] = '/cards/autocomplete'
        api.get(params)
    end
end