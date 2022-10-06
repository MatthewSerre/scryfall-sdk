# frozen_string_literal: true

require 'scryfall/base'

module Scryfall
  class Cards < Scryfall::Base
    def self.search(query, page = nil)
      params = { q: query.encode }
      params['path'] = '/cards/search'
      params['page'] = page unless page.nil? || page == 1
      api.get(params)
    end

    def self.named(query, exact = false, set = nil)
      params = exact ? { exact: query.encode } : { fuzzy: query.encode }
      params['path'] = '/cards/named'
      params['set'] = set unless set.nil?
      api.get(params)
    end

    def self.autocomplete(query)
      params = { q: query.encode }
      params['path'] = '/cards/autocomplete'
      api.get(params)
    end
  end
end
