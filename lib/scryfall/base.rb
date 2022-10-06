# frozen_string_literal: true

module Scryfall
  class Base
    require 'scryfall/api'

    def self.api
      @api ||= Scryfall::API.new
    end
  end
end
