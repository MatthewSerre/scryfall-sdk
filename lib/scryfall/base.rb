# frozen_string_literal: true

module Scryfall
  # Contains a method for initializing a new instance of the API class
  class Base
    require 'scryfall/api'

    def self.api
      @api ||= Scryfall::API.new
    end
  end
end
