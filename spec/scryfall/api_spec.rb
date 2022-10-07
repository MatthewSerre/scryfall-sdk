# frozen_string_literal: true

require 'net/http'
require 'scryfall'

RSpec.describe Scryfall::API do
  context 'get' do
    it 'does not raise an error when the request succeeds' do
      VCR.use_cassette('successful get') do
        expect { Scryfall::API.new.get(path: '/cards/random') }.not_to raise_error
      end
    end

    it 'raises an error when the request fails' do
      VCR.use_cassette('failed get') do
        expect do
          Scryfall::API.new.get(path: '/cards/name', query: 'jac bel',
                                exact: true)
        end.to raise_error(Scryfall::API::ScryfallResponseError)
      end
    end
  end
end
