class Scryfall::Base
    require 'scryfall/api'

    def self.api
        @api ||= Scryfall::API.new
    end
end