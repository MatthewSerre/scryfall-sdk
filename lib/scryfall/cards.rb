require 'scryfall/base'

class Scryfall::Cards < Scryfall::Base
    def self.search(query, page = nil)
        params = { q: query.encode }
        params['page'] = page unless page.nil? || page == 1
        api.get('/cards/search', params)
    end
end