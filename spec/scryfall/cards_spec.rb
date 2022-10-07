# frozen_string_literal: true

require 'scryfall'

RSpec.describe Scryfall::Cards do
  context 'search' do
    it 'returns a JSON response containing the search results' do
      VCR.use_cassette('successful search') do
        expect(Scryfall::Cards.search(query: 'c:c cmc=15')['data'].length).to eq(2)
      end
    end
  end

  context 'named' do
    context 'fuzzy' do
      it 'returns a JSON response containing the data for the specified card' do
        VCR.use_cassette('successful fuzzy named') do
          expect(Scryfall::Cards.named(query: 'jac bel')['name']).to eq('Jace Beleren')
        end
      end
    end

    context 'exact' do
      # test goes here
      it 'returns a JSON response containing the data for the specified card' do
        VCR.use_cassette('successful exact named') do
          expect(Scryfall::Cards.named(query: 'jace beleren', exact: true)['name']).to eq('Jace Beleren')
        end
      end
    end

    context 'random' do
      it 'returns a JSON response containing the data for a random card' do
        VCR.use_cassette('successful random search') do
          expect(Scryfall::Cards.random(query: ' ')['object']).to eq('card')
        end
      end
    end
  end
end
